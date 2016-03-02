defmodule InfoSys.Test.HTTPClient do
  require Logger

  @wolfram_xml File.read!("test/fixtures/wolfram.xml")
  def request(url) do
    url = to_string(url)
    #Logger.error(url)
    valid = String.contains?(url, "1%2B1")
    #Logger.error(valid)
    cond do
      valid -> {:ok, {[], [], @wolfram_xml}}
      true -> {:ok, {[], [], "<queryresult></queryresult>"}}
    end
  end
end

ExUnit.start()
