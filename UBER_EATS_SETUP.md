# Shawarma Sinbad - Uber Eats Integration Setup Guide

## Overview
Your website now has a full redesign with:
- **Universal header** with sticky navigation
- **Hero section** on the homepage
- **Features showcase**
- **Popular items section**
- **Dedicated ordering page** with Uber Eats integration
- **Professional footer**

## How to Configure Uber Eats Webshop

### Step 1: Create an Uber Eats for Business Account
1. Go to [Uber Eats for Business](https://www.ubereats.com/feed)
2. Click "Create an account" or "Get started"
3. Sign up as a restaurant
4. Fill in your restaurant details:
   - Restaurant name: "Shawarma Sinbad"
   - Cuisine type: "Middle Eastern"
   - Address and contact info
   - Hours of operation
5. Complete the verification process (may take 1-3 business days)

### Step 2: Set Up Your Menu on Uber Eats
1. Once your account is verified, log into your Uber Eats for Business dashboard
2. Go to **"Menu"** section
3. Add menu categories (Appetizers, Main Courses, Desserts, Drinks, etc.)
4. Add items to each category with:
   - Item name
   - Description
   - Price
   - Availability
   - Ingredients/allergens
5. Add photos for each item (recommended for better sales)
6. Set your delivery radius and estimated delivery time

### Step 3: Get Your Uber Eats Webshop Embed Code
1. In your Uber Eats for Business dashboard, look for **"Settings"** or **"Embed Menu"**
2. Find the option for **"Web Embed"** or **"Website Integration"**
3. Generate an embed code (iframe) - it will look like:
   ```html
   <iframe src="https://www.ubereats.com/webshop/YOUR_RESTAURANT_ID" 
           title="Uber Eats Menu"></iframe>
   ```
4. Copy this entire iframe code

### Step 4: Add the Embed Code to Your Website
1. Open: `app/views/pages/order.html.erb`
2. Find the comment: `<!-- REPLACE THIS WITH YOUR UBER EATS IFRAME CODE -->`
3. Remove the placeholder div below it:
   ```html
   <div style="background: #f7f6f3; padding: 32px; border-radius: 8px; text-align: center;">
     <p style="color: #999; margin: 0;">Uber Eats menu will appear here after configuration</p>
   </div>
   ```
4. Replace it with your iframe code from Step 3
5. Save the file

### Step 5: Test the Integration
1. Start your Rails server: `rails server`
2. Go to `http://localhost:3000/order`
3. You should see the Uber Eats menu embed
4. Test placing an order through the embed

## Website Structure

### Pages
- **Home** (`/`) - Hero section with features and specialties
- **Menu** (`/menu`) - Full menu display
- **Order** (`/order`) - Uber Eats integration and ordering options
- **Story** (`/history`) - About your restaurant
- **Contact** (`/contact`) - Contact information

### Navigation
- Header is **sticky** and appears on all pages
- "Order Now" button in header links directly to `/order`
- All pages are linked in the header navigation

## Key Features

### Design
- Clean, minimal, professional aesthetic
- Beige/gold color scheme inspired by your logo
- Smooth animations and transitions
- Fully responsive for mobile devices
- Sticky header for easy navigation

### Functionality
- Direct phone order option
- Seamless Uber Eats integration
- Multiple ordering methods (Uber Eats + Direct Call)

## Customization Tips

### Change Contact Phone Number
Edit `app/views/pages/order.html.erb` and update:
```html
<a href="tel:+15551234567">(555) 123-4567</a>
```

### Update Hours of Operation
Edit `app/views/pages/contact.html.erb` with your actual hours

### Add Your Logo
- Save your logo as `app/assets/images/logo.png`
- It will automatically appear in the header and hero section

### Customize Colors
Edit `app/assets/stylesheets/application.css`:
- Primary color: `#bfa76a` (gold/beige) - change in multiple places
- Text color: `#232323` (dark) 
- Background: `#f7f6f3` (light)
- Accent: `#666` (gray for secondary text)

## Uber Eats Support

If you have issues:
- **Uber Eats Help**: [help.uber.com](https://help.uber.com)
- **Uber Eats for Business**: Check your dashboard notifications
- **Embed Issues**: Ensure your restaurant is verified and webshop is enabled

## What's Next?

You can:
1. Add menu photos
2. Create special promotions/deals on Uber Eats
3. Customize the menu items display further
4. Add more pages (testimonials, gallery, etc.)
5. Integrate Google Maps and reviews
6. Add email contact form on contact page

Enjoy your modern restaurant website!