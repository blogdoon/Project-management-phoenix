alias ProjectManagement.Repo
alias ProjectManagement.Management.Document

Repo.insert!(%Document{
  title: "document title",
  content: "documnet content",
  published: true,
  view_count: 10,
  project_id: 1
})

Repo.insert!(%Document{
  title: "document title 2",
  content: "documnet content 2",
  published: true,
  view_count: 10,
  project_id: 1
})

Repo.insert!(%Document{
  title: "document title 3",
  content: "documnet content 3",
  published: true,
  view_count: 20,
  project_id: 2
})

Repo.insert!(%Document{
  title: "document title 4",
  content: "documnet content 4",
  published: true,
  view_count: 30,
  project_id: 3
})
