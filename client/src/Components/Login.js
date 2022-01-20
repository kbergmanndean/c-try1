import {useState} from "react"

function Login(){
    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")
    const [errors, setErrors] = useState([])

    async function handleSubmit(e){
        e.preventDefault()
        const user={
            username: username,
            password: password
        }
        const res = await fetch ("http://localhost:3000/login",{
            method: "POST",
            headers:{"Content-Type":"application/json"},
            body:JSON.stringify({user})
        });
        const userData = await res.json();
        if (userData.id) {
            localStorage.setItem("user_id", userData.id)
        }
        else {
            setErrors(userData.errors)
        }
    }


    return(
        <div>
        <form onSubmit={handleSubmit}>
            <br/>
            <h1>Log In</h1>
            <br/>
            <input
                type="text" 
                placeholder="username"
                value={username}
                name="username"
                onChange={(e)=>setUsername(e.target.value)}>
            </input>
            <input
                type="text"
                placeholder="password"
                value={password}
                name="password"
                onChange={(e)=>setPassword(e.target.value)}>
            </input>
            <input type="submit" value="Log In" className="btn btn-outline-dark auth"></input>
            <br/>
            <br/>
            {errors? errors.map(error=><div key={error}>{error}</div>):null}
        </form>
        </div>
    )
}
export default Login