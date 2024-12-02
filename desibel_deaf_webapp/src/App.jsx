import React from 'react';
import { Toaster } from 'react-hot-toast';
import { AuthProvider } from './contexts/AuthContext';
import { useAuth } from './contexts/AuthContext';
import Dashboard from './pages/Dashboard';
import Navbar from './components/layout/Navbar';
import Hero from './components/home/Hero';
import Courses from './components/home/Courses';
import JoinUs from './components/home/JoinUs';
import Footer from './components/layout/Footer';
import SignIn from './pages/SignIn';
import SignUp from './pages/SignUp';

function AppContent() {
  const { user } = useAuth();
  const path = window.location.pathname;

  if (user) {
    return <Dashboard />;
  }

  switch (path) {
    case '/signin':
      return <SignIn />;
    case '/signup':
      return <SignUp />;
    default:
      return (
        <>
          <Navbar />
          <Hero />
          <Courses />
          <JoinUs />
          <Footer />
        </>
      );
  }
}

function App() {
  return (
    <AuthProvider>
      <AppContent />
      <Toaster position="top-right" />
    </AuthProvider>
  );
}

export default App;