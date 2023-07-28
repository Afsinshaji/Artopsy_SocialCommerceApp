import 'package:flutter/material.dart';

import '../../domain/models/artwork_details.dart';

final ArtworkDetails nullArtworkConstant = ArtworkDetails(
  isSold: false,
  userId: '',
  artworkId: '',
    title: '',
    desctription: '',
    artist: '',
    category: '',
    yearOfCreation: '',
    height: '',
    width: '',
    depth: '',
    price: '',
    imageUrl: '');

const kWidth = SizedBox(
  width: 10,
);
const kWidth20 = SizedBox(
  width: 20,
);
const kWidth30 = SizedBox(
  width: 30,
);
const kWidth40 = SizedBox(
  width: 40,
);
const kWidth50 = SizedBox(
  width: 50,
);
const kWidth60 = SizedBox(
  width: 60,
);
const kWidth100 = SizedBox(
  width: 100,
);
const kWidth150 = SizedBox(
  width: 150,
);
const kHeight = SizedBox(
  height: 10,
);
const kHeight20 = SizedBox(
  height: 20,
);
const kHeight30 = SizedBox(
  height: 30,
);
const kHeight40 = SizedBox(
  height: 40,
);
const kHeight50 = SizedBox(
  height: 50,
);
const kHeight100 = SizedBox(
  height: 100,
);

final artworkImageList = [
  "https://www.axeducation.com/wp-content/uploads/2019/01/WechatIMG491-600x712.jpeg",
  "https://www.popsci.com/uploads/2019/03/18/7TS6NMHQUUPK44ZFWFS7ZWDJAQ-768x979.jpg",
  "https://www.datocms-assets.com/42890/1683244840-sid93675crop2560px.jpg?dpr=0.5&fit=max&fm=webp&iptc=allow&w=1500",
  "https://imageio.forbes.com/specials-images/imageserve/64213c10fc7ed6f0a3eb47ae/The-Intersection-Of-AI-And-Human-Creativity--Can-Machines-Really-Be-Creative-/960x0.jpg?height=473&width=711&fit=bounds",
  "https://tds-images.thedailystar.net/sites/default/files/images/2022/10/14/ai_art_generator.png",
  "https://images.nightcafe.studio/jobs/desTe5CwbqFcZNPCnIoF/desTe5CwbqFcZNPCnIoF--1--y6784_15.625x.jpg?tr=w-750,c-at_max",
  "https://paintable.cc/wp-content/uploads/2018/04/Digital-Painting-Portrait-11-Aaron-Griffin-696x1024.jpg",
  "https://media.timeout.com/images/105795964/1920/1080/image.jpg",
  "https://10mosttoday.com/wp-content/uploads/2013/09/The_Persistence_of_Memory1.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Moses_San_Pietro_in_Vincoli.jpg/520px-Moses_San_Pietro_in_Vincoli.jpg",
  "https://www.fubiz.net/wp-content/uploads/2018/08/OliviaKemp4-670x670.jpg",
  "https://www.artsnorth.net/uploads/2/5/2/0/25203585/published/plastic-classics-found-objects-famous-portraits-jane-perkins-5.jpg?1522455747",
  "https://i0.wp.com/www.hireanillustrator.com/i/images/2021/02/focus-magazine-illustration.jpg?ssl=1",
  "https://images.hdqwalls.com/wallpapers/bthumb/creative-art.jpg",
  "https://images.nightcafe.studio/jobs/rVJ8akB9NLAeuYQBDt0E/rVJ8akB9NLAeuYQBDt0E--4--50u88_2x.jpg?tr=w-750,c-at_max",
  "https://wallpaperaccess.com/full/396439.jpg",
  "https://img.designswan.com/2017/05/opticalIllustration/2.jpg",
  "https://i.pinimg.com/736x/07/b3/42/07b34256a9c49e7503400ffa3b69caf1--psychedelic-art-fish-art.jpg",
];

final artworkNameList = [
  "Whispers of the Moon",
  "Serenade in Blue",
  "Enchanted Forest",
  "Dancing in the Rain",
  "Ethereal Dreams",
  "Harmony of Colors",
  "Crimson Reverie",
  "Whimsical Wanderlust",
  "Celestial Symphony",
  "Vibrant Horizons",
  "Mystic Melodies",
  "Emerald Euphoria",
  "Whispering Petals",
  "Journey to the Unknown",
  "Azure Reflections",
  "Golden Autumn",
  "Melting Skies",
  "Stardust Serenade",
];
final artworkArtistList = [
  'Pablo Picasso',
  'Frida Kahlo',
  'Vincent van Gogh',
  'Leonardo da Vinci',
  'Georgia OKeeffe',
  'Salvador Dalí',
  'Claude Monet',
  'Jackson Pollock',
  'Andy Warhol',
  'Gustav Klimt',
  'Henri Matisse',
  'Wassily Kandinsky',
  'Rembrandt van Rijn',
  'Edvard Munch',
  'René Magritte',
  'Yayoi Kusama',
  'Jean-Michel Basquiat',
  'Banksy'
];
final artworkPriceList = [
  '₹1000',
  '₹2333',
  '₹5432',
  '₹1000',
  '₹2333',
  '₹5432',
  '₹1000',
  '₹2333',
  '₹5432',
  '₹1000',
  '₹2333',
  '₹5432',
  '₹1000',
  '₹23334356',
  '₹5432',
  '₹1000',
  '₹23334356',
  '₹5432',
];

final artworkDetailsList = [];
