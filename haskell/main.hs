import System.Exit

count :: Int -> IO ()
count 1_000_000_000 = exitSuccess
count x =
  count (x + 1)

main = count 1
