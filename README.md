# **Flutter To-Do App with API Integration**

## **Overview**

This project is a Flutter-based To-Do application designed to showcase proficiency in Flutter, state management using Riverpod, offline storage using `SharedPreferences`, and integration with an external API. The application allows users to create, view, and manage their to-do tasks, and also displays data fetched from an external API with offline capabilities.

## **Features**

- **To-Do Management**:
    - Add new to-do tasks with details such as title, category, selected date, start time, end time, and description.
    - Mark tasks as completed or not completed.
    - Delete tasks as needed.
    - Persistent storage of to-do tasks using `SharedPreferences`.
    - Tap on the square icon on the top left of homepage appbar to view the photos screen.

- **State Management**:
    - Use Riverpod for state management, including loading, error, and success states.
    - Maintain state across the application, including filtering tasks by today's date and keeping the state when navigating between screens.

- **API Integration**:
    - Fetch data from an external API (`https://jsonplaceholder.typicode.com/photos`).
    - Store the first 20 items locally for offline access.
    - Display fetched items in a list format with thumbnails.
    - Proper error handling for API requests, with fallback to offline data if the network is unavailable.

## **Setup and Installation**

### **Prerequisites**

- Flutter SDK (>= 3.4.0)
- Dart (>= 4.0.0)
- Android Studio, Intellij or Visual Studio Code with Flutter plugins installed
- A device or emulator to run the application

### **Installation Steps**

1. **Clone the repository**:

   ```bash
   git clone  https://github.com/mimi-tech/flutter_todo_app.git 
   cd flutter-todo-app
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**:

   ```bash
   flutter run
   ```

## **Project Structure**

```plaintext
lib/
│
├── main.dart               # Entry point of the application
├── models/                 # Data models using Freezed
│   ├── todo_task_model.dart
│   └── photo_model.dart
│
├── services/               # API service class
│   └── photo_service.dart
│
├── repository/             # Repository class for managing API and local data
│   └── photo_repository.dart
│
├── providers/              # State management using Riverpod
│   └── todo_provider.dart
│   └── photo_provider.dart
│
├── screens/                # UI screens
│   ├── todo_list_screen.dart
│   ├── todo_create_screen.dart
│   └── photo_list_screen.dart
│
└── widgets/                # Reusable UI components
    └── bottom_navigation_bar.dart
```

## **Usage**

### **Adding a To-Do Task**
- Navigate to the **Create Task Screen** using the floating action button on the bottom navigation bar.
- Enter the details for the task, including title, category, selected date, start time, end time, and description.
- Save the task to persist it locally.
- Tap on the square icon on the top left of homepage appbar to view the photos screen.
 


### **Viewing To-Do Tasks**
- View all your tasks on the **To-Do List Screen**.
- Tasks are shown with their title and a checkbox to mark them as completed.
- Filter tasks to show only those due today or view all tasks.

### **Fetching and Displaying Photos**
- Navigate to the **API Data Screen** using the bottom navigation bar.
- The app will fetch data from the provided API and display a list of photo thumbnails and titles.
- If there's no network, it will fetch the first 20 items saved locally.

### **Error Handling**
- The app handles errors gracefully, displaying appropriate messages when an API request fails or when there’s no network connection.

### **State Management**
- The app uses Riverpod for managing the state of the to-do tasks and API data.
- It handles loading, error, and success states, ensuring a smooth user experience.

## **Screenshots**
<table>
<tr>
<td>
<img src="https://github.com/user-attachments/assets/952cae45-7d88-431a-9657-591a73d864b8">

</td>

<td>
<img src="https://github.com/user-attachments/assets/7c9dbcfa-06a6-4948-ba8a-dcb839b9224f">
</td>

<td>
<img src="https://github.com/user-attachments/assets/a06d5ebd-1771-4ac0-82e2-5838ea55f69f">
</td>
</tr>
</table>


## **Further Enhancements**

- Add more features like task reminders, priority levels, and notifications.
- Implement additional filtering options for the to-do tasks.
- Improve the UI and add more animations for better user experience.

## **Contributing**

If you'd like to contribute, please fork the repository and use a feature branch. Pull requests are welcome.

## **License**

This project is open-source and available under the MIT License.

---

