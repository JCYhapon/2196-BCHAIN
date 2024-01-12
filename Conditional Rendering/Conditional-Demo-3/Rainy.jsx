function Rainy() {
  return <h1 className="font-mono mt-5 mb-5">Bring your umbrella!</h1>;
}

function Sunny() {
  return <h1 className="font-mono mt-5 mb-5">Bring your sunglasses!</h1>;
}

function RainOrShine(props) {
  const isRainy = props.isRainy;
  if (isRainy) {
    return <Rainy />;
  }
  return <Sunny />;
}

export default function App() {
  return (
    <div>
      <RainOrShine isRainy={false} />
    </div>
  );
}
