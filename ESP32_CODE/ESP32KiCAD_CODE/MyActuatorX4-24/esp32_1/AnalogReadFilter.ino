// Define the number of readings for averaging
const int numReadings = 10;  // Adjust this for smoothing level

// Declare variables to store the state of the filter
int readings[numReadings];  // Array to store readings
int readIndex = 0;          // Index of the current reading
int total = 0;              // Running total of the readings
int average = 0;            // Calculated average

// Function to initialize the filter (call in setup)
void initializeFilter() {
  for (int i = 0; i < numReadings; i++) {
    readings[i] = 0;  // Initialize all readings to 0
  }
}

// Moving average filter function
int movingAverageFilter(int newReading) {
  // Subtract the oldest reading from the total
  total = total - readings[readIndex];

  // Add the new reading to the array
  readings[readIndex] = newReading;

  // Add the new reading to the total
  total = total + readings[readIndex];

  // Move to the next index, wrapping around if necessary
  readIndex = (readIndex + 1) % numReadings;

  // Calculate the average
  average = total / numReadings;

  // Return the filtered value
  return average;
}
