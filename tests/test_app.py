from unittest.mock import patch
from app import check_website


@patch("app.requests.get")
def test_check_website(mock_get):
    mock_get.return_value.status_code = 200

    result = check_website()

    assert result == 200