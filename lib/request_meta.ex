defmodule LangChain.RequestMeta do
  @moduledoc """
  Contains all the meta information like rate limits from last API request.
  """

  @type t :: %__MODULE__{
          ratelimit_requests: Limit.t(),
          ratelimit_tokens: Limit.t()
        }

  defstruct ~w(
    ratelimit_requests
    ratelimit_tokens
  )a

  defmodule Limit do
    @type t :: %__MODULE__{
            limit: pos_integer(),
            remaining: pos_integer(),
            time_to_reset: pos_integer()
          }

    defstruct ~w(
    limit
    remaining
    time_to_reset
  )a
  end
end
