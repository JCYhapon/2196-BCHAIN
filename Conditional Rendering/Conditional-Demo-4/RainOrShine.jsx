export default function App() {
  return (
    <div className={`${isRainy === true ? "dark" : "light"}`}>
      <RainOrShine />
    </div>
  );
}

function Rainy() {
  return <h1 className="font-mono mt-5 mb-5">Bring your umbrella!</h1>;
}

function Sunny() {
  return <h1 className="font-mono mt-5 mb-5">Bring your sunglasses!</h1>;
}

const isRainy = false;

function RainOrShine(props) {
  const isRainy = props.isRainy;
  return isRainy ? <Rainy /> : <Sunny />;
}
