import React from "react";
import "./NavigationBar.css"
export default function Nav(){
    return(
        <>
            <div className="MainDiv">
                <div className="listandimg">
                    <a href="/">
                        <img src="https://cdn.prod.website-files.com/666255f7f2126f4e8cec6f8f/66634daccb34e6d65a41c76d_download.svg" alt="This Logo of link tree" className="img"/>
                    </a>
                    <ul>
                        <li>Apple</li>
                        <li>Banana</li>
                        <li>Cherry</li>
                        <li>Mango</li>
                    </ul>
                </div>
                <div className="ButtonDiv">
                    <button className="loginButton">Log in</button>
                    <button className="signupButton">Sign up free</button>
                </div>
            </div>
        </>
    )
}
