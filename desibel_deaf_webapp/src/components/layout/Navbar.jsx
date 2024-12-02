import React from 'react';
import Container from '../ui/Container';
import Button from '../ui/Button';
import { navigation } from '../../utils/constants';
import { useAuth } from '../../contexts/AuthContext';
import toast from 'react-hot-toast';

function Navbar() {
  const { user, signOut } = useAuth();

  const handleSignOut = async () => {
    try {
      await signOut();
      toast.success('Signed out successfully');
    } catch (error) {
      toast.error('Error signing out');
    }
  };

  return (
    <nav className="bg-white shadow-sm">
      <Container>
        <div className="flex justify-between items-center h-16">
          <a href="/" className="text-xl font-bold text-blue-600">DP</a>
          
          <div className="hidden md:flex gap-6">
            {navigation.map((item) => (
              <a 
                key={item.name}
                href={item.href}
                className="hover:text-blue-600 transition-colors"
              >
                {item.name}
              </a>
            ))}
          </div>

          <div className="flex gap-4">
            {user ? (
              <>
                <span className="text-gray-600">Hello, {user.email}</span>
                <Button variant="secondary" onClick={handleSignOut}>
                  Sign out
                </Button>
              </>
            ) : (
              <>
                <a href="/signin">
                  <Button variant="secondary">Sign in</Button>
                </a>
                <a href="/signup">
                  <Button>Sign up</Button>
                </a>
              </>
            )}
          </div>
        </div>
      </Container>
    </nav>
  );
}

export default Navbar;