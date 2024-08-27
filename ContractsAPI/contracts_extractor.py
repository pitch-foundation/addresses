import json
import requests

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
            tranche_data = {
                'chainId': chain_id,
                'protocol': protocol,
                'protocolLabel': protocol_label,
                'depositToken_name': deposit_token_name,
                'depositToken_address': deposit_token_address,
                'zapper': zapper,
                'addressLockDepositor': tranche.get('addressLockDepositor'),
                'pointToken': tranche.get('pointToken'),
                'principalToken': tranche.get('principalToken'),
                'combinedToken': tranche.get('combinedToken')
            }
            extracted_data.append(tranche_data)

    return extracted_data

def update_output_file(file_path, extracted_data):
    """Update the output file with the extracted data."""
    try:
        with open(file_path, 'r') as file:
            existing_data = json.load(file)
    except FileNotFoundError:
        existing_data = []

    # Append the new data to existing data
    updated_data = existing_data + extracted_data

    # Write updated data back to the file
    with open(file_path, 'w') as file:
        json.dump(updated_data, file, indent=4)

def main():
    api_url = 'https://api.hourglass.com/v1/point-boost'
    output_file_path = './ContractsAPI/hourglass_contract_addresses.json'  # Specify your output file path

    # Fetch data from API
    json_data = fetch_json_from_api(api_url)

    # Extract relevant data from JSON
    extracted_data = extract_data_from_json(json_data)

    # Update the output file with the extracted data
    update_output_file(output_file_path, extracted_data)

    print(f"Data successfully fetched from API and updated in {output_file_path}.")

if __name__ == "__main__":
    main()
