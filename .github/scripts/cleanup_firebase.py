import os
import requests
import json

def delete_old_releases():
    project_number = os.getenv('FIREBASE_PROJECT_NUMBER')
    app_id = os.getenv('FIREBASE_APP_ID')
    token = os.getenv('GOOGLE_ACCESS_TOKEN')
    base_url = "https://firebaseappdistribution.googleapis.com/v1"
    headers = {
        "Authorization": f"Bearer {token}",
        "Content-Type": "application/json"
    }
    list_url = f"{base_url}/projects/{project_number}/apps/{app_id}/releases"
    response = requests.get(list_url, headers=headers)
    if response.status_code != 200:
        print(f"Error fetching releases: {response.text}")
        return
    releases = response.json().get('releases', [])
    if len(releases) <= 1:
        print("No old releases to cleanup.")
        return
    release_names_to_delete = [r['name'] for r in releases[1:]] 
    batch_delete_url = f"{base_url}/projects/{project_number}/apps/{app_id}/releases:batchDelete"
    payload = {"names": release_names_to_delete}
    del_res = requests.post(batch_delete_url, headers=headers, data=json.dumps(payload))
    if del_res.status_code == 200:
        print(f"Successfully deleted {len(release_names_to_delete)} old releases.")
    else:
        print(f"Failed to delete releases: {del_res.text}")
if __name__ == "__main__":
    delete_old_releases()