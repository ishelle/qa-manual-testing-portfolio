Sample Logistics Application Bug Reports

«These are sample defects created for portfolio demonstration purposes.»


BUG-001 — Deactivated User Can Still Access the Logistics Application

Severity: Critical
Priority: High
Module: User Management/Authentication

Preconditions

- A valid user account exists.
- The user account is currently active.
- The tester has administrator access to the User Management module.
- Valid username/email and password are available.

Steps to Reproduce

1. Log in to the Logistics Management Application as an Administrator.
2. Navigate to User Management.
3. Search for an existing active user.
4. Change the user's account status from Active to Deactivated.
5. Save the changes.
6. Log out from the administrator account.
7. Navigate to the application login page.
8. Enter the credentials of the deactivated user.
9. Click Login.

Expected Result

The system should prevent the deactivated user from logging in.
An appropriate message should be displayed, for example:
"Your account has been deactivated. Please contact your administrator."
The user should not receive an authentication token or access to any protected application pages.

Actual Result

The deactivated user is successfully authenticated and can access the Logistics Management Application.

Status

Open

---

BUG-002 — Shipment Can Be Created Without Destination

Severity: High
Priority: High
Module: Shipment Creation

Preconditions

User is logged into the logistics application.

Steps to Reproduce

1. Open the shipment creation page.
2. Enter a valid customer.
3. Enter a valid origin.
4. Leave the destination field blank.
5. Enter valid package information.
6. Click Create Shipment.

Expected Result

The system should prevent shipment creation and display a validation message requiring the destination.

Actual Result

The shipment is created even though the destination is blank.

Status

Open

---

BUG-003 — Invalid Tracking Number Produces Incorrect Message

Severity: Medium
Priority: Medium
Module: Shipment Tracking

Steps to Reproduce

1. Open the shipment tracking page.
2. Enter an invalid tracking number.
3. Click Search.

Expected Result

The system should display a clear message indicating that the shipment cannot be found.

Actual Result

The system displays an unclear or generic error message.

Status

Open
