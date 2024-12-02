import React from 'react';
import Container from '../ui/Container';
import Button from '../ui/Button';
import { footerLinks } from '../../utils/constants';

function Footer() {
  return (
    <footer className="bg-gray-900 text-white">
      <Container className="py-12">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-8">
          <div>
            <h3 className="text-xl font-bold mb-4">Contact Us</h3>
            <ul className="space-y-2 text-gray-400">
              <li>Email: info@example.com</li>
              <li>Phone: (555) 123-4567</li>
              <li>Address: 123 Learning St, Education City</li>
            </ul>
          </div>

          <div>
            <h3 className="text-xl font-bold mb-4">Quick Links</h3>
            <ul className="space-y-2">
              {footerLinks.map((link) => (
                <li key={link.name}>
                  <a 
                    href={link.href}
                    className="text-gray-400 hover:text-white transition-colors"
                  >
                    {link.name}
                  </a>
                </li>
              ))}
            </ul>
          </div>

          <div>
            <h3 className="text-xl font-bold mb-4">Newsletter</h3>
            <p className="text-gray-400 mb-4">
              Subscribe to our newsletter for updates
            </p>
            <div className="space-y-2">
              <input 
                type="email" 
                placeholder="Enter your email"
                className="w-full p-2 rounded bg-gray-800 text-white"
              />
              <Button variant="dark" className="w-full">
                Subscribe
              </Button>
            </div>
          </div>
        </div>

        <div className="border-t border-gray-800 pt-8 text-center text-gray-400">
          <p>© {new Date().getFullYear()} DP. All rights reserved.</p>
        </div>
      </Container>
    </footer>
  );
}

export default Footer;