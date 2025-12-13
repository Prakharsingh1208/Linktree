import React from 'react'
import { createRoot } from 'react-dom/client'
import Nav from "../components/layout/NavigaionBar.jsx";
import Homepage from "../components/Homepage/Homepage.jsx"
document.addEventListener('DOMContentLoaded', () => {
    const container = document.getElementById('navigation-bar')
    if (container) {
        const root = createRoot(container)
        root.render(<Nav />)
    }
})
document.addEventListener('DOMContentLoaded', () => {
    const container = document.getElementById('main-content')
    if (container) {
        const root = createRoot(container)
        root.render(<Homepage />)
    }
})