<!-- markdownlint-disable -->

# infra-demo-atmos-pro <a href="https://cpco.io/homepage?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content="><img align="right" src="https://cloudposse.com/logo-300x69.svg" width="150" /></a>

<a href="https://github.com/cloudposse/atmos/releases/latest"><img src="https://img.shields.io/github/release/cloudposse/atmos.svg?style=for-the-badge" alt="Latest Release"/></a><a href="https://slack.cloudposse.com"><img src="https://slack.cloudposse.com/for-the-badge.svg" alt="Slack Community"/></a>

<!-- markdownlint-restore -->

<!--




  ** DO NOT EDIT THIS FILE
  **
  ** This file was automatically generated by the `cloudposse/build-harness`.
  ** 1) Make all changes to `README.yaml`
  ** 2) Run `make init` (you only need to do this once)
  ** 3) Run`make readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **





-->

> ### Automated Terraform Management & Orchestration Software (ATMOS)

Atmos simplifies complex cloud architectures and DevOps workflows into
[intuitive CLI commands](https://atmos.tools/category/cli). Its strength in managing
[DRY configurations at scale](https://atmos.tools/core-concepts/) is supported by robust
[design patterns](https://atmos.tools/design-patterns/), comprehensive [documentation](https://atmos.tools/), and a
[passionate community](https://slack.cloudposse.com/), making it a versatile
[tool for both startups and enterprises](https://cloudposse.com/). Atmos is extensible to accommodate any tooling,
including enterprise-scale Terraform, and includes
[policy controls](https://atmos.tools/core-concepts/components/validation),
[vendoring](https://atmos.tools/core-concepts/vendoring/), and
[GitOps capabilities](https://atmos.tools/integrations/github-actions) out of the box. Everything is open source and
free.

---

## Introduction

Find all documentation at: [atmos.tools](https://atmos.tools)

> [!TIP]
>
> ### Did you know?
>
> By leveraging Atmos in conjunction with Cloud Posse's [_expertise in AWS_](https://cloudposse.com),
> [_terraform blueprints_](https://cloudposse.com/services/), and our
> [_knowledgeable community_](https://slack.cloudposse.com), teams can achieve operational mastery and innovation
> faster, transforming their infrastructure management practices into a competitive advantage.

## Usage

This repository demonstrates how to use Atmos Pro with GitHub Actions to plan and apply Terraform. We have created mock
components in this repository that do nto actually create any resources in your AWS account. This is a demonstration
repository to show how to use Atmos Pro with GitHub Actions. The dependency mapping is a follows.

```mermaid
graph LR;
    vpc --> cache
    vpc --> database
    vpc --> load-balancer
    load-balancer --> cluster
    object-storage --> cdn
    cache --> frontend
    database --> frontend
    cluster --> frontend
    cdn --> frontend
```

## ✨ Contributing

This project is under active development, and we encourage contributions from our community. Many thanks to our
outstanding contributors:

<a href="https://github.com/cloudposse-examples/infra-demo-atmos-pro/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=cloudposse-examples/infra-demo-atmos-pro&max=24" />
</a>

### 🌎 Slack Community

Join our
[Open Source Community](https://cpco.io/slack?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=slack)
on Slack. It's **FREE** for everyone! Our "SweetOps" community is where you get to talk with others who share a similar
vision for how to rollout and manage infrastructure. This is the best place to talk shop, ask questions, solicit
feedback, and work together as a community to build totally _sweet_ infrastructure.

### 📰 Newsletter

Sign up for
[our newsletter](https://cpco.io/newsletter?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=newsletter)
and join 3,000+ DevOps engineers, CTOs, and founders who get insider access to the latest DevOps trends, so you can
always stay in the know. Dropped straight into your Inbox every week — and usually a 5-minute read.

### 📆 Office Hours <a href="https://cloudposse.com/office-hours?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=office_hours"><img src="https://img.cloudposse.com/fit-in/200x200/https://cloudposse.com/wp-content/uploads/2019/08/Powered-by-Zoom.png" align="right" /></a>

[Join us every Wednesday via Zoom](https://cloudposse.com/office-hours?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=office_hours)
for your weekly dose of insider DevOps trends, AWS news and Terraform insights, all sourced from our SweetOps community,
plus a _live Q&A_ that you can’t find anywhere else. It's **FREE** for everyone!

## About

This project is maintained by
<a href="https://cpco.io/homepage?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=">Cloud
Posse, LLC</a>.
<a href="https://cpco.io/homepage?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content="><img src="https://cloudposse.com/logo-300x69.svg" align="right" /></a>

We are a
[**DevOps Accelerator**](https://cpco.io/commercial-support?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=commercial_support)
for funded startups and enterprises. Use our ready-to-go terraform architecture blueprints for AWS to get up and running
quickly. We build it with you. You own everything. Your team wins. Plus, we stick around until you succeed.

<a href="https://cpco.io/commercial-support?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=commercial_support"><img alt="Learn More" src="https://img.shields.io/badge/learn%20more-success.svg?style=for-the-badge"/></a>

_Your team can operate like a pro today._

Ensure that your team succeeds by using our proven process and turnkey blueprints. Plus, we stick around until you
succeed.

<details>
  <summary>📚 <strong>See What's Included</strong></summary>

- **Reference Architecture.** You'll get everything you need from the ground up built using 100% infrastructure as code.
- **Deployment Strategy.** You'll have a battle-tested deployment strategy using GitHub Actions that's automated and
  repeatable.
- **Site Reliability Engineering.** You'll have total visibility into your apps and microservices.
- **Security Baseline.** You'll have built-in governance with accountability and audit logs for all changes.
- **GitOps.** You'll be able to operate your infrastructure via Pull Requests.
- **Training.** You'll receive hands-on training so your team can operate what we build.
- **Questions.** You'll have a direct line of communication between our teams via a Shared Slack channel.
- **Troubleshooting.** You'll get help to triage when things aren't working.
- **Code Reviews.** You'll receive constructive feedback on Pull Requests.
- **Bug Fixes.** We'll rapidly work with you to fix any bugs in our projects.
</details>

## <a href="https://cloudposse.com/readme/commercial-support/link?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=readme_commercial_support_link"><img src="https://cloudposse.com/readme/commercial-support/img"/></a>

Copyright © 2017-2024 [Cloud Posse, LLC](https://cpco.io/copyright)

<a href="https://cloudposse.com/readme/footer/link?utm_source=github&utm_medium=readme&utm_campaign=cloudposse-examples/infra-demo-atmos-pro&utm_content=readme_footer_link"><img alt="README footer" src="https://cloudposse.com/readme/footer/img"/></a>

<img alt="Beacon" width="0" src="https://ga-beacon.cloudposse.com/UA-76589703-4/cloudposse-examples/infra-demo-atmos-pro?pixel&cs=github&cm=readme&an=infra-demo-atmos-pro"/>
