const obj = document.querySelectorAll(".imageList");

function changeImage() {
    let imgArray = new Array();
   imgArray[0] = "https://janet.co.kr/data/licenseitem/104/7KeB7JeF7IOB64u07IKs7IOB7IS4.jpg";
   imgArray[1] = "https://janet.co.kr/data/licenseitem/150/.6rO17Ya17J2867O47Ja07IOB7IS4.jpg";
   imgArray[2] = "https://janet.co.kr/data/licenseitem/155/7JiB7Ja0.jpg";
   imgArray[3] = "https://janet.co.kr/data/licenseitem/153/HSK7IOB7IS4.jpg";
   imgArray[4] = "https://janet.co.kr/data/licenseitem/1622600872/496.OPIC7Jik7ZS97JiB7Ja0_web.jpg";
   imgArray[5] = "https://janet.co.kr/data/licenseitem/1622600926/309.7L2U65Sp7KeA64E7IKs_web.jpg";
   imgArray[6] = "https://janet.co.kr/data/licenseitem/101/7KCV67O07LKY66as6riw7IKs.jpg";
   imgArray[7] = "https://janet.co.kr/data/licenseitem/190/.6rO17Ya17IKs66y07IOB7IS4.jpg";
   imgArray[8] = "https://janet.co.kr/data/licenseitem/180/4.GTQ.jpg";
   imgArray[9] = "https://janet.co.kr/data/licenseitem/343/552.7J6Q7IKw6rSA66as7IKsFP_web.jpg";
   imgArray[10] = "https://janet.co.kr/data/licenseitem/176/ITQ.jpg";
   imgArray[11] = "https://janet.co.kr/data/licenseitem/112/GTQ7IOB7IS4.jpg";
   imgArray[12] = "https://janet.co.kr/data/licenseitem/1644372771/433.7Lus65s66as7Iqk7Yq46riw7IKs_web.jpg";
   imgArray[13] = "https://janet.co.kr/data/licenseitem/1631266501/75.7JeQ64SI7KeA6rSA66as6riw7IKs_web.jpg";
   imgArray[14] = "https://imsconsulting.com.au/wp-content/uploads/2018/11/Elizabeth-Quay-Panorama-1900x500.jpg";
   imgArray[15] = "https://insurelinemutualaid.com/wp-content/uploads/2016/06/1-Northern-Ontario-1900x500.jpg";
   imgArray[16] = "https://inhouselegaltech.com/wp-content/uploads/2018/09/modern-cityscape-and-communication-network-concept-picture-id928819758-1-1900x500.jpg";
   imgArray[17] = "https://inhouselegaltech.com/wp-content/uploads/2018/12/block-chain-network-picture-id909472220.jpg";
   imgArray[18] = "https://inhouselegaltech.com/wp-content/uploads/2019/01/futuristic-digital-blockchain-background-fintech-technology-picture-id952039816.jpg";
   imgArray[19] = "https://www.westmorelandstormwater.org/wp-content/uploads/2019/06/IWRP_Banner01-1900x500.jpg";
   imgArray[20] = "https://audiotonas.lt/wp-content/uploads/2020/05/1900x500-4.png";
   imgArray[21] = "https://nohdralive.com/wp-content/uploads/2016/11/sidewalk_cover_32-1900x500.jpg";
   imgArray[22] = "https://www.albany.edu/sites/default/files/styles/thin_hero/public/ba-japanese-header-1900x500.jpg";
   imgArray[23] = "https://i0.wp.com/blog.dfdsseaways.co.uk/wp-content/uploads/2019/10/Rotterdam-1900x500.jpg";

   
   for(let i = 0 ; i<obj.length; i++){
    let img = Math.round(Math.random()*23);
    obj[i].src = imgArray[img];
    console.log(img);
    console.log(obj.src);
    
   }
}

