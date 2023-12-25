import {Link} from "react-router-dom";

function HeadingCustomer(){
    return(
        <section className="site-hero overlay" style={{backgroundImage: "url('https://cf.bstatic.com/xdata/images/hotel/max1280x900/37836676.jpg?k=6e5197f999e346e00edd20fe9de55d145f8f8ba7acf290921f4b1def1bbf6f93&o=&hp=1')"}} data-stellar-background-ratio="0.5">
            <div className="container">
                <div className="row site-hero-inner justify-content-center align-items-center">
                    <div className="col-md-10 text-center" data-aos="fade">
                        <h1 className="heading mb-3">LOẠI PHÒNG</h1>
                        <ul className="custom-breadcrumbs mb-4">
                            <li><Link to={"/"}>Trang chủ</Link></li>
                            <li>-</li>
                            <li>Khách hàng</li>
                        </ul>
                    </div>
                </div>
            </div>

            <Link className="mouse smoothscroll" to="#next">
                <div className="mouse-icon">
                    <span className="mouse-wheel"></span>
                </div>
            </Link>
        </section>
    )
}
export default HeadingCustomer;