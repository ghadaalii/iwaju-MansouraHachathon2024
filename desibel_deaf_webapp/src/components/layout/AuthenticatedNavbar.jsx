import React from 'react';
import Container from '../ui/Container';
import { useAuth } from '../../contexts/AuthContext';
import toast from 'react-hot-toast';

export default function AuthenticatedNavbar() {
  const { signOut } = useAuth();

  const handleSignOut = async () => {
    try {
      await signOut();
      toast.success('Signed out successfully');
    } catch (error) {
      toast.error('Error signing out');
    }
  };

  return (
    <nav className="bg-white border-b">
      <Container>
        <div className="flex justify-between items-center h-16">
          <div className="text-xl font-bold text-blue-600">DP</div>
          <div className="flex space-x-4">
            <a href="#" className="px-3 py-2">Find Courses</a>
            <a href="#" className="px-3 py-2">About us</a>
            <a href="#" className="px-3 py-2">Contact us</a>
          </div>
          <div className="flex items-center space-x-4">
            <button onClick={handleSignOut} className="px-4 py-2 bg-black text-white rounded-md">
              Sign Out
            </button>
            <button className="p-2">
              <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
              </svg>
            </button>
            <button className="p-2">
              <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
              </svg>
            </button>
          </div>
        </div>
      </Container>
    </nav>
  );
}