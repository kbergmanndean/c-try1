import {useState} from 'react'

function Input(){
    const [image, setImage] = useState(null)
    const [year, setYear] = useState("")
    const [clay, setClay] = useState("")
    const [glaze, setGlaze] = useState("")
    
    return(
        <div>
            <form>
                <label></label>
                <input type="text"/>
            </form>
        </div>
    )
}

export default Input