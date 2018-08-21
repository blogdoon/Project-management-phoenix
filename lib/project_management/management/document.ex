defmodule ProjectManagement.Management.Document do
  use Ecto.Schema
  import Ecto.Changeset

  alias ProjectManagement.Management.Project

  schema "documents" do
    field(:title, :string)
    field(:content, :string)
    field(:view_count, :integer)
    field(:published, :boolean)

    belongs_to(:project, Project)

    timestamps()
  end

  @doc false
  def changeset(document, attrs) do
    document
    |> cast(attrs, [:title, :content, :view_count, :published, :project_id])
    |> validate_required([:name])
  end
end
