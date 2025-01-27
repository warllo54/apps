# Changelog<br>


<a name="traefik-8.0.1"></a>
### [traefik-8.0.1](https://github.com/truecharts/apps/compare/traefik-7.1.4...traefik-8.0.1) (2021-09-13)

#### Chore

* move most remaining Apps to GHCR mirror ([#959](https://github.com/truecharts/apps/issues/959))
* move more dockerhub containers to GHCR mirror ([#958](https://github.com/truecharts/apps/issues/958))
* update non-major ([#962](https://github.com/truecharts/apps/issues/962))

#### Feat

* add new GUI and VPN support to all Apps ([#977](https://github.com/truecharts/apps/issues/977))
* Add VPN addon and move some config to includes ([#973](https://github.com/truecharts/apps/issues/973))
* pin all container references to digests ([#963](https://github.com/truecharts/apps/issues/963))
* Move some common containers to our own containers

#### Fix

* make sure podSecurityContext is included in both SCALE and Helm installs ([#956](https://github.com/truecharts/apps/issues/956))



<a name="traefik-7.1.4"></a>
### [traefik-7.1.4](https://github.com/truecharts/apps/compare/traefik-7.1.3...traefik-7.1.4) (2021-09-08)

#### Fix

* remove non-functional redirectmiddelwares for nextcloud



<a name="traefik-7.1.3"></a>
### [traefik-7.1.3](https://github.com/truecharts/apps/compare/traefik-7.1.2...traefik-7.1.3) (2021-09-08)

#### Fix

* correct nextcloud middleware namespaces



<a name="traefik-7.1.2"></a>
### [traefik-7.1.2](https://github.com/truecharts/apps/compare/traefik-7.1.1...traefik-7.1.2) (2021-09-08)

#### Fix

* only release when version is bumped
* use fixed version for traefik container for consistency



<a name="traefik-7.1.1"></a>
### [traefik-7.1.1](https://github.com/truecharts/apps/compare/traefik-7.1.0...traefik-7.1.1) (2021-09-08)

#### Fix

* fix release pipeline picking wrong file for appversion generation



<a name="traefik-7.1.0"></a>
### [traefik-7.1.0](https://github.com/truecharts/apps/compare/traefik-7.0.11...traefik-7.1.0) (2021-09-08)

#### Feat

* Add IPWhitelist, redirectRegex and (internal) nextcloud middlewares ([#929](https://github.com/truecharts/apps/issues/929))
* Pre-commit and tag-appversion syncing ([#926](https://github.com/truecharts/apps/issues/926))

<a name="traefik-7.0.11"></a>
## [traefik-7.0.11](https://github.com/truecharts/apps/compare/traefik-7.0.10...traefik-7.0.11) (2021-09-08)
