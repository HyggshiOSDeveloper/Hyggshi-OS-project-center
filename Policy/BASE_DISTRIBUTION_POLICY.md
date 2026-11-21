# Hyggshi OS – Base Distribution Policy

**Version:** 1.0  
**Status:** Active  
**Author:** Nguyen Minh Phuc  
**Last Updated:** 21 November 2026

---

## 1. Purpose

This document defines the policies and principles governing the selection, maintenance, upgrading, and lifecycle management of the Linux base distribution used by Hyggshi OS.

The purpose of this policy is to ensure system stability, security, maintainability, and long-term development consistency.

This policy applies to all Linux-based editions of Hyggshi OS.

## 2. Base Distribution Selection

Hyggshi OS selects its base distribution according to the following priorities:

1. System stability and reliability.
2. Security maintenance and update availability.
3. Hardware compatibility.
4. Package availability and ecosystem support.
5. Long-term maintainability.
6. Compatibility with Hyggshi OS components.

The choice of a base distribution must be based on technical requirements rather than popularity or trends.

### 2.1 Preferred Base

Debian Stable is the preferred base distribution for Hyggshi OS Linux editions.

Other distributions may be evaluated for research, testing, or future development. However, changing the default base requires technical evaluation and approval by the project maintainer.

## 3. Release Channel Policy

Hyggshi OS distinguishes between the following base distribution channels:

| Channel | Purpose |
|---|---|
| Stable | Main production releases |
| Testing | Development and compatibility testing |
| Unstable | Experimental research only |

### 3.1 Stable Priority

Stable is the default choice for public releases.

Testing and Unstable must not automatically replace Stable as the production base.

### 3.2 Testing and Experimental Builds

Testing builds may be used to evaluate:

- New kernel versions.
- Desktop environments.
- System libraries.
- Package compatibility.
- New Hyggshi OS components.

Experimental builds must be clearly identified and must not be presented as stable releases.

## 4. Security and Maintenance

Hyggshi OS must monitor security updates and maintenance announcements from its base distribution.

The project should prioritize:

- Critical security fixes.
- High-priority system updates.
- Kernel security updates.
- Important package fixes.
- Compatibility and stability improvements.

When the base distribution transfers a release to its Long Term Support (LTS) phase, Hyggshi OS should review its maintenance strategy accordingly.

## 5. Update Policy

Hyggshi OS may provide system updates through its own update mechanism.

The update system should follow these principles:

- Preserve user data whenever possible.
- Avoid unnecessary application changes during system updates.
- Support rollback where technically possible.
- Do not force automatic reboot without user consent.
- Provide update logs for troubleshooting.

### 5.1 Point Releases

A new point release of the base distribution does not automatically require a complete Hyggshi OS ISO rebuild.

The project maintainer may distribute applicable updates through APT or the Hyggshi OS OTA mechanism.

A new ISO should be considered when changes significantly affect installation, compatibility, system components, or the initial user experience.

### 5.2 Major Version Upgrades

Upgrading to a new major base distribution version requires compatibility testing.

The project should evaluate:

- Kernel compatibility.
- Package dependencies.
- Desktop environment compatibility.
- Boot and installation processes.
- Hyggshi OS tools and services.
- Upgrade and rollback behavior.

Major upgrades must not be deployed to stable users without appropriate testing.

## 6. End-of-Life (EOL) Policy

Hyggshi OS must monitor the lifecycle of its base distribution.

When a base distribution reaches End-of-Life:

1. The project must evaluate the remaining security support.
2. The affected Hyggshi OS release must be reviewed.
3. Users should be informed about the maintenance status.
4. A migration or upgrade path should be considered.
5. Unsupported releases must not be advertised as receiving security maintenance.

The project maintainer determines whether an affected release will be extended, migrated, discontinued, or archived.

## 7. Compatibility and Testing

Before publishing a release based on a new base distribution, the project should perform appropriate testing.

Testing may include:

- Boot testing.
- QEMU virtual machine testing.
- Installation testing.
- Desktop environment testing.
- Package dependency checks.
- Update and rollback testing.
- Basic hardware compatibility checks.

Testing scope depends on the size and risk of the changes.

## 8. ISO and Build Policy

Hyggshi OS ISO images should prioritize:

- A reliable boot process.
- A functional installation or live environment, where applicable.
- Correct system branding.
- Required system components.
- Reasonable image size.
- Reproducible build procedures where practical.

Optional development tools and applications may be excluded from lightweight editions to reduce ISO size and resource requirements.

## 9. Policy Exceptions

The project maintainer may approve exceptions to this policy for research, experimental builds, special editions, or technical requirements.

Exceptions should be documented when they affect public releases or user expectations.

## 10. Final Authority

The project maintainer has final authority over:

- Base distribution selection.
- Release channel decisions.
- Major version upgrades.
- Maintenance and EOL decisions.
- ISO release decisions.
- Policy revisions.

---

**Copyright © 2024–2026 Nguyen Minh Phuc.**  
**Hyggshi OS – All Rights Reserved.**
