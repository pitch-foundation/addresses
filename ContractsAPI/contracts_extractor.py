import json
import requests
from datetime import datetime
from collections import defaultdict

def fetch_json_from_api(api_url):
    """Fetch JSON data from the given API URL."""
    response = requests.get(api_url)
    response.raise_for_status()  # Raise an error for bad responses
    return response.json()

def extract_data_from_json(json_data):
    """Extract specified data from the JSON structure."""
    extracted_data = []

    for item in json_data.get('data', []):
        # Extract general information
        chain_id = item.get('chainId')
        protocol = item.get('protocol')
        protocol_label = item.get('label')
        zapper = item.get('zapper')
        deposit_token_name = item.get('depositToken', {}).get('name')
        deposit_token_address = item.get('depositToken', {}).get('address')

        # Extract tranche information
        tranches = item.get('tranches', [])
        for tranche in tranches:
            maturity_timestamp = tranche.get('maturityTimestamp')

            # Convert timestamp to date only
            maturity_date = datetime.utcfromtimestamp(maturity_timestamp).strftime('%Y-%m-%d') if maturity_timestamp else None

            tranche_data = {
                'chainId': chain_id,
                'protocol': protocol,
                'protocolLabel': protocol_label,
                'depositToken_name': deposit_token_name,
                'multiplier' : tranche.get('multiplier'),
                'depositToken_address': deposit_token_address,
                'zapper': zapper,
                'maturityTimestamp': maturity_timestamp,
                'maturityDate': maturity_date,
                'addressLockDepositor': tranche.get('addressLockDepositor'),
                'pointToken': tranche.get('pointToken'),
                'principalToken': tranche.get('principalToken'),
                'combinedToken': tranche.get('combinedToken')
            }
            extracted_data.append(tranche_data)

    return extracted_data

def update_output_file(file_path, extracted_data):
    """Overwrite the output file with the extracted data."""
    with open(file_path, 'w') as file:
        json.dump(extracted_data, file, indent=4)

def write_markdown_file(file_path, extracted_data):
    """Write the extracted data to a markdown file, grouped by protocol, deposit token name, and maturity date."""
    # Group data by protocol, then by deposit token name, and finally by maturity date
    grouped_data = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
    for data in extracted_data:
        protocol = data['protocol']
        deposit_token_name = data['depositToken_name']
        maturity_date = data['maturityDate']
        grouped_data[protocol][deposit_token_name][maturity_date].append(data)

    # Write to markdown file
    with open(file_path, 'w') as file:
        file.write('# Hourglass Locking Addresses Grouped by Protocol, Deposit Token, and Maturity\n\n')
        for protocol, deposit_groups in grouped_data.items():
            file.write(f"<details>\n")
            file.write(f"<summary><span style='font-size: 1.5em; font-weight: bold;'>{protocol}</span></summary>\n\n")
            file.write("<br>\n\n")
            for deposit_token_name, maturity_groups in deposit_groups.items():
                # Indent the "Deposit Token Name" and its contents
                file.write(f"<div style='margin-left: 20px;'>\n")
                file.write(f"<details>\n")
                file.write(f"<summary><span style='font-size: 1.25em; font-weight: bold;'>{deposit_token_name}</span></summary>\n\n")
                # file.write("<br>\n\n")
                for maturity_date, entries in maturity_groups.items():
                    # Indent the "Maturity Date" and its contents
                    file.write(f"<div style='margin-left: 20px;'>\n")
                    file.write(f"<details>\n")
                    file.write(f"<summary><span style='font-size: 1em;'>{maturity_date} Maturity Date - {entries[0]['multiplier']}x Boost</span></summary>\n\n")
                    for entry in entries:
                        address_lock_depositor = entry['addressLockDepositor']
                        address_combined_token = entry['combinedToken']
                        address_principal_token = entry['principalToken']
                        address_point_token = entry['pointToken']
                        address_zapper = entry['zapper']
                        address_deposit_token = entry['depositToken_address']
                        etherscan_link = f"https://etherscan.io/address/{address_lock_depositor}#code"
                        file.write(f"  - Lock Depositor: [{address_lock_depositor}]({etherscan_link})\n")
                        file.write(f"  - Combined Token: [{address_combined_token}]({etherscan_link})\n")
                        file.write(f"  - Principal Token: [{address_principal_token}]({etherscan_link})\n")
                        file.write(f"  - Combined Token: [{address_combined_token}]({etherscan_link})\n")
                        file.write(f"  - Point Token: [{address_point_token}]({etherscan_link})\n")
                        file.write(f"  - Maturity Timestamp: {entry['maturityTimestamp']}\n")
                        file.write(f"  - Zapper Used for Point Leverage: [{address_zapper}]({etherscan_link})\n")
                        file.write(f"  - Deposit Token: [{address_deposit_token}]({etherscan_link})\n")
                        file.write(f"  - Chain ID: {entry['chainId']}\n")
                    file.write("</details>\n")
                    file.write("</div>\n\n") 
                file.write("</details>\n")
                file.write("</div>\n\n")  
                file.write("<br>\n\n")
            file.write("</details>\n\n")
            file.write("---\n\n") 

def main():
    api_url = 'https://api.hourglass.com/v1/point-boost'
    output_file_path = './ContractsAPI/hourglass_contract_addresses.json'  # Specify your output file path
    output_md_path = './ContractsAPI/Locking_Addresses.md'

    # Fetch data from API
    json_data = fetch_json_from_api(api_url)

    # Extract relevant data from JSON
    extracted_data = extract_data_from_json(json_data)

    # Overwrite the output file with the extracted data
    update_output_file(output_file_path, extracted_data)

    # Write the extracted data to a markdown file
    write_markdown_file(output_md_path, extracted_data)

    print(f"Data successfully fetched from API and written to {output_file_path} and {output_md_path}.")

if __name__ == "__main__":
    main()
