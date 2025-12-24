# ClientX

ClientX is a comprehensive Client Management System built with Flutter. It facilitates interaction between administrators and clients, allowing for efficient management of projects, tasks, and analytics.

## Features

### Admin Module

The administrator interface provides a high-level overview and management capabilities:

- **Dashboard**: View key statistics like Total Clients, Projects, and Tasks.
- **Analytics**: Visualization of revenue, active users, and new projects.
- **Client Management**: List and manage client accounts and statuses.
- **Project Management**: Track active projects and their progress.
- **Notifications**: Stay updated with system alerts, new requests, and task completions.

### Client Module

The client interface allows users to manage their specific work items:

- **Home**: Overview of assigned projects and tasks.
- **Project Management**: Create and view projects.
- **Task Management**:
  - Create new tasks with title, description, and priority.
  - **Link to Projects**: Optionally assign tasks to specific projects or keep them independent.
- **Analytics**: View personal or company-specific performance metrics.

## Getting Started

To run this project locally:

1.  **Prerequisites**: Ensure you have [Flutter](https://docs.flutter.dev/get-started/install) installed.
2.  **Clone the repository**:
    ```bash
    git clone <repository-url>
    cd clientx
    ```
3.  **Install dependencies**:
    ```bash
    flutter pub get
    ```
4.  **Run the app**:
    ```bash
    flutter run
    ```

## Project Structure

- `lib/screens/admin`: Contains all screens related to the Admin portal (Home, Analytics, Clients, Projects, Notifications).
- `lib/screens/client`: Contains all screens related to the Client portal (Home, Add Task, Add Project).
- `lib/widgets`: Reusable UI components.

## Dependencies

- [google_fonts](https://pub.dev/packages/google_fonts): For custom typography (Poppins).
- [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter): For additional icons.
