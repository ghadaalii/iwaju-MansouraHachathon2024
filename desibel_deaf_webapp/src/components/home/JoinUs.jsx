import React from 'react';
import Section from '../ui/Section';
import Container from '../ui/Container';
import Button from '../ui/Button';

function JoinUs() {
  return (
    <Section className="bg-blue-50">
      <Container>
        <div className="text-center max-w-4xl mx-auto">
          <h2 className="text-3xl font-bold mb-6">
            Join Our Community
          </h2>
          <p className="text-gray-600 mb-8">
            Be part of a growing community dedicated to learning and supporting each other.
            Start your journey today!
          </p>
          <Button className="px-8 py-4">
            Get Started Now
          </Button>
        </div>
      </Container>
    </Section>
  );
}

export default JoinUs;