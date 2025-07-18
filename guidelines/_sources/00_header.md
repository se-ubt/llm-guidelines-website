---
layout: default
title: Guidelines
nav_order: 4
has_children: false
---

# Guidelines

This set of guidelines is currently a DRAFT and based on a discussion session with researchers at the 2024 International Software Engineering Research Network ([ISERN](https://isern.fraunhofer.de})) meeting and at the 2nd [Copenhagen Symposium on Human-Centered Software Engineering AI](https://www.danielrusso.org/copenhagen-symposium-human-centered-ai-software-engineering/).
This draft is meant as a starting point for further discussions in the community with the aim of developing a common understanding of how we should conduct and report empirical studies involving large language models (LLMs).
See also the pages on [study types](/study-types) and [scope](/scope).

The wording of the recommendations (**MUST**, **SHOULD**, **MAY**) follows [RFC 2119](https://www.rfc-editor.org/rfc/rfc2119) and [8174](https://www.rfc-editor.org/rfc/rfc8174).

Throughout the guidelines, we mention what information we expect to be reported in the PAPER or in the SUPPLEMENTARY MATERIAL.
We are aware that different venues have different page limits and that not everything can be reported in the paper.
It is of course better to report essential information that we expect to be reported in the paper in the supplementary material than not at all.
Unless explicitly mentioned otherwise, we expect information to be reported either in the PAPER and/or the SUPPLEMENTARY MATERIAL.
If information **MUST** be reported in the PAPER, we explicitly mention this in the specific guidelines.

Our guidelines focus on LLMs that use text for input and output.
We do not focus on multi-modal foundation models that support other media such as images.
However, many of our recommendations apply to multi-modal models as well.
The guidelines could be extended in the future to make this more visible.

The main goal of our guidelines is to **enable reproducibility and replicability** of empirical studies involving LLMs in software engineering.
While we consider LLM-based studies to have characteristics that differ from traditional empirical studies (e.g., their inherent non-determinism and the fact that truly open models are rare), previous guidelines regarding open science and  empirical studies still apply.
While full reproducibility of LLM study results is very challenging given LLM's non-determinism, transparency on LLM usage, methods, data, and architecture, as suggested by our guidelines, is an essential prerequisite for future replication studies.

## Overview

1. [Declare LLM Usage and Role](#declare-llm-usage-and-role)
2. [Report Model Version, Configuration, and Customizations](#report-model-version-configuration-and-customizations)
3. [Report Tool Architecture beyond Models](#report-tool-architecture-beyond-models)
4. [Report Prompts, their Development, and Interaction Logs](#report-prompts-their-development-and-interaction-logs)
5. [Use Human Validation for LLM Outputs](#use-human-validation-for-llm-outputs)
6. [Use an Open LLM as a Baseline](#use-an-open-llm-as-a-baseline)
7. [Report Suitable Baselines, Benchmarks, and Metrics](#report-suitable-baselines-benchmarks-and-metrics)
8. [Report Limitations and Mitigations](#report-limitations-and-mitigations)

