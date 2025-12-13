import React from "react";
import "./Homepage.css"

export default function Homepage(){
    return(
        <>
        <div className="mainHomeDiv">
            <div className="textDiv">
                <h1 className="headingText">
                    A link in bio built for you.
                </h1>
                <p className="pText">
                    Join 70M+ people using Linktree for their link in bio. One link to help you share everything you create, curate and sell from your Instagram, TikTok, Twitter, YouTube and other social media profiles.
                </p>

            </div >
            <div className="formDiv">
                <input type="text" className="linkInput" placeholder=" Enter your custom link"/>
                <button type="submit"className="linkButton">Get started for free</button>
            </div>
        </div>
        </>
    )
}