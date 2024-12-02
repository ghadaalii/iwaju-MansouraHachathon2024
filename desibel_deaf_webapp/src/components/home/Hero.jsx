import React from 'react';
import Container from '../ui/Container';
import Button from '../ui/Button';

function Hero() {
  return (
    <div className="bg-gray-50">
      <Container className="py-16">
        <div className="flex flex-col md:flex-row items-center justify-between gap-12">
          <div className="max-w-xl">
            <p className="text-blue-600 mb-2">
              Hundreds of People are here to help you
            </p>
            <h1 className="text-5xl font-bold mb-4">
              Nothing can stop you!
            </h1>
            <p className="text-gray-600 mb-8">
              "Empowering the Deaf community to thrive.
              A platform for learning, connection, and meaningful opportunities."
            </p>
            <div className="flex gap-4">
              <Button>Find Courses</Button>
              <Button variant="secondary">Join us</Button>
            </div>
          </div>
          
          <div className="w-full md:w-96 h-96 bg-blue-100 rounded-lg overflow-hidden">
            <img 
              src="/hero-image.jpg" 
              alt="Person using sign language" 
              className="w-full h-full object-cover"
            />
          </div>
        </div>
      </Container>
    </div>
  );
}

export default Hero;