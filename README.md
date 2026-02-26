# Activity Marker Studio

A modern, responsive web application for marking and managing your daily activities and reminders. Built with vanilla HTML, CSS, and JavaScript, with local storage support and deployment-ready configuration.

## 🌟 Features

### Core Functionality
- **Activity Management**: Create, edit, search, and delete activities with ease
- **Date & Time Tracking**: Record activities with specific dates and times
- **Alarm Notifications**: Set alarms for important activities
- **Search Functionality**: Quickly find activities using the search feature
- **Local Storage**: All activities are automatically saved to browser local storage
- **Auto-Save**: Activities are automatically saved at regular intervals

### User Interface
- **Modern Design**: Beautiful gradient-based UI with smooth animations
- **Responsive Layout**: Fully responsive design that works on desktop, tablet, and mobile devices
- **Dark Mode Compatible**: Supports various color themes and safe area insets for notched devices
- **Touch-Friendly**: Optimized for touch interactions with appropriate button sizes
- **Real-Time Updates**: Live date and time display in the header

### Advanced Features
- **Batch Delete Operations**:
  - Delete all past activities
  - Delete activities within a date range
- **Activity Editing**: Inline editing of existing activities with full control over date, time, and alarm settings
- **Alarm Management**: Snooze or dismiss alarms with customizable options
- **Activity Highlighting**: Search results are highlighted for easy identification

## 🎨 User Interface Components

### Header
- Application title
- Current date and time display
- Search bar for activity lookup

### Activity Input Section
- Date and time pickers with calendar support
- Alarm toggle for setting reminders
- Delete option controls
- Text area for activity description
- Save and delete buttons

### Activities List
- Organized by date
- Color-coded visual indicators
- Action buttons (Edit, Save, Delete) on hover
- Edit mode for inline modifications
- Grouped by date for better organization

## 🛠️ Technology Stack

- **Frontend**: HTML5, CSS3, Vanilla JavaScript (ES6+)
- **Storage**: Browser Local Storage API
- **Deployment**: Firebase Hosting compatible
- **Containerization**: Docker support included

## 📋 Project Structure

```
activitymarker/
├── index.html           # Main application file (HTML + CSS + JS)
├── 404.html            # Custom 404 error page
├── firebase.json       # Firebase hosting configuration
├── Dockerfile          # Docker container configuration
├── README.md           # This file
└── details/            # Asset directory with images and documentation
    ├── Display standard.jpg
    ├── Display Zoom.jpg
    ├── imagePhone.jpg
    ├── image2.jpg
    ├── image3.jpg
    ├── image4.jpg
    ├── image5.jpg
    └── iphone options.jpg
```

## 🚀 Getting Started

### Prerequisites
- A modern web browser (Chrome, Firefox, Safari, Edge)
- For Docker deployment: Docker installed on your system

### Local Development

1. **Clone or download the repository**
   ```bash
   git clone <repository-url>
   cd activitymarker
   ```

2. **Open in Browser**
   - Simply open `index.html` in your web browser
   - No build process or dependencies required!

3. **Start Using**
   - Enter a date and time for your activity
   - Type your activity description
   - Click "Save" to add it to your list
   - Activities are automatically saved to local storage

### Firebase Hosting Deployment

1. **Install Firebase CLI**
   ```bash
   npm install -g firebase-tools
   ```

2. **Initialize Firebase Project**
   ```bash
   firebase init
   ```

3. **Deploy**
   ```bash
   firebase deploy
   ```

### Docker Deployment

1. **Build the Docker Image**
   ```bash
   docker build -t activitymarker:latest .
   ```

2. **Run the Container**
   ```bash
   docker run -d -p 80:80 activitymarker:latest
   ```

3. **Access the Application**
   - Open your browser and navigate to `http://localhost`

## 💾 Data Storage

Activities are stored in the browser's Local Storage with the following structure:

```javascript
{
  "YYYY-MM-DD": [
    {
      "time": "HH:MM",
      "text": "Activity description",
      "alarm": true/false
    },
    // ... more activities
  ],
  // ... more dates
}
```

### Storage Features
- **Automatic Persistence**: All data persists across browser sessions
- **Auto-Save**: Changes are saved every 10 seconds
- **Manual Save**: Click the Save button for immediate storage
- **Clear History**: Delete activities manually or use batch delete features

## ⌨️ Usage Guide

### Adding an Activity
1. Select a date using the date picker
2. Select a time using the time picker
3. Optionally enable alarm notifications
4. Enter your activity description in the text area
5. Click "💾 Save" button

### Editing an Activity
1. Hover over an activity card in the list
2. Click the "Edit" button (pencil icon)
3. Modify the date, time, description, or alarm settings
4. Click "Save" to update the activity

### Searching Activities
1. Use the search bar in the header
2. Type your search term
3. Results will be filtered and highlighted in real-time

### Deleting Activities
1. **Single Delete**: Hover over an activity and click the "Delete" button (trash icon)
2. **Batch Delete**: 
   - Check "Delete activity" in the input section
   - Choose "Delete Past Activity" to remove all past activities
   - Or choose "Delete By Date" and select a date range
   - Click "Delete Activities" button

### Setting Alarms
1. Check the "Set Alarm" checkbox when adding an activity
2. When the alarm triggers (at the scheduled time):
   - A notification popup will appear
   - Click "Snooze" to be reminded again in 5 minutes
   - Click "Cancel" to dismiss the alarm

## 📱 Mobile Responsiveness

The application is fully optimized for mobile devices:
- **Responsive Layout**: Adapts to different screen sizes
- **Touch Optimization**: Large touch targets for easy interaction
- **Safe Area Support**: Works properly on notched devices
- **Viewport Scaling**: Proper viewport configuration for mobile displays

## 🔐 Data Privacy

- All data is stored **locally** in your browser
- **No server communication** for data storage
- **No personal information** is sent to external servers
- Your data remains on your device at all times

## 🎯 Keyboard Shortcuts

- **Enter** in search field: Triggers search
- Standard browser navigation: Works as expected

## 🐛 Browser Support

- ✅ Chrome/Chromium (latest)
- ✅ Firefox (latest)
- ✅ Safari (latest)
- ✅ Edge (latest)
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

## 🎨 Styling Features

- **Modern Gradient**: Blue-to-purple gradient background
- **Smooth Animations**: All interactions have smooth transitions
- **Color Coding**: Activities are color-coded by status
  - Blue: Regular activities
  - Orange: Editing mode
  - Red: Alarms/Critical
  - Green: Saved/Confirmed
- **Dark-Mode Aware**: Respects system dark mode preferences

## 📦 Dependencies

This project has **zero external dependencies**! Everything is built with:
- Pure HTML5
- Pure CSS3
- Vanilla JavaScript (ES6+)
- Browser APIs only

## 🔄 Auto-Save Feature

The application automatically saves your activities every 10 seconds. You'll see a status indicator at the top right showing:
- 💾 "Auto-save enabled"
- "Saving..." (during save operation)
- ✅ "Saved" (when save is complete)

## 📝 Configuration Files

### firebase.json
Firebase hosting configuration that:
- Serves from the root directory
- Ignores hidden files and node_modules
- Uses 404.html for custom error handling

### Dockerfile
Nginx-based container configuration that:
- Uses Alpine Linux for minimal size
- Serves static HTML files
- Exposes port 80
- Auto-starts Nginx service

## 🎓 How It Works

### Application Flow
1. **Initialization**: On page load, activities are loaded from local storage
2. **Display**: Activities are grouped by date and rendered to the DOM
3. **Interaction**: Users can add, edit, search, or delete activities
4. **Storage**: Changes are automatically saved to local storage
5. **Notifications**: Alarm notifications trigger at scheduled times

### Alarm System
1. When an activity with alarm is saved, a timer is set
2. Timer checks every second if the current time matches activity time
3. When time matches, alarm popup appears on screen
4. User can snooze (5 more minutes) or dismiss

## 🤝 Contributing

To contribute to this project:
1. Fork the repository
2. Make your changes
3. Test thoroughly in multiple browsers
4. Submit a pull request

## 📄 License

This project is open source and available for personal and commercial use.

## 📞 Support

For issues or questions:
1. Check the project structure and files
2. Review the browser console for errors
3. Ensure you're using a modern web browser
4. Clear local storage if experiencing issues: `localStorage.clear()`

## 🚀 Future Enhancements

Potential features for future versions:
- Cloud synchronization
- Multiple activity categories/tags
- Recurring activities
- Notes and attachments
- Activity statistics and analytics
- Export activities to CSV/PDF
- Dark mode toggle
- Custom notification sounds

## 📊 Activity Statistics

The application can track:
- Total activities created
- Activities per day
- Most active times
- Search history

## 🎉 Tips & Tricks

1. **Bulk Operations**: Use the date range delete to clean up old activities
2. **Search Power**: Use partial text matching for broad searches
3. **Mobile**: Add to home screen on mobile for app-like experience
4. **Backup**: Export your local storage data regularly
5. **Speed**: Activities load instantly since they're stored locally

---

**Activity Marker Studio** - Your simple, powerful activity tracker for the modern web.

**Version**: 1.0.0  
**Last Updated**: February 2026

