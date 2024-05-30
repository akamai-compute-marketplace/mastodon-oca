# Linode Marketplace Mastodon One-Click App

**This repository has been archived, and is unsupported.**

The Mastodon One-Click App is still available in the [Marketplace Apps repo](https://github.com/akamai-compute-marketplace/marketplace-apps/tree/main/apps/linode-marketplace-mastodon)

-----

The Linode Marketplace is designed to make it easier for developers and companies to share [One-Click Apps](https://www.linode.com/marketplace/) with the Linode community. One-Click Apps are portable and modular solutioning tools written as Ansible playbooks. The Linode Marketplace allows users to quickly deploy services and perform essential configurations on a Linode Compute Instance's first boot.

# About Mastodon

[Mastodon](https://docs.joinmastodon.org/) is an open-source and decentralized micro-blogging platform. Like Twitter, it lets users follow other users and post text, photos, and video content. Mastodon also allows you to create a non-profit social network based on open web standards and principles. Unlike Twitter, Mastodon is decentralized, meaning that its content is not maintained by a central authority.

What sets the Mastodon platform apart is its federated approach to social networking. Each Mastodon instance operates independently — anyone can create an instance and build their community. But users from different instances can still follow each other, share content, and communicate.

Mastodon participates in the [Fediverse](https://en.wikipedia.org/wiki/Fediverse), a collection of social networks and other websites that communicate using the [ActivityPub](https://en.wikipedia.org/wiki/ActivityPub) protocol. That allows different Mastodon instances to communicate, and also allows other platforms in the Fediverse to communicate with Mastodon.

Mastodon servers range in size from small private instances to massive public instances and typically center on specific interests or shared principles. The biggest Mastodon server is [Mastodon.social](https://mastodon.social/about), a general-interest server created by the developers of the Mastodon platform. It has over 540,000 users and boasts a thorough [Code of Conduct](https://mastodon.social/about/more).

## Deploying a Marketplace App

The Linode Marketplace allows you to easily deploy software on a Compute Instance using the Cloud Manager.

1. Ensure that your domain is using the Linode name servers as the [authoritative name servers](https://www.linode.com/docs/products/networking/dns-manager/get-started/#use-linodes-name-servers) at the registrar level.

2. Log in to the [Cloud Manager](https://cloud.linode.com) and select the **Marketplace** link from the left navigation menu. This displays the Linode **Create** page with the **Marketplace** tab pre-selected.

3. Under the **Select App** section, select the app you would like to deploy.

4. Complete the form by following the steps and advice within the [Creating a Compute Instance](linode.com/docs/guides/creating-a-compute-instance/) guide. Depending on the Marketplace App you selected, there may be additional configuration options available. See the [Configuration Options](https://linode.com/docs/products/tools/marketplace/guides/mastodon/#configuration-options) section below for compatible distributions, recommended plans, and any additional configuration options available for this Marketplace App.

5. Click the **Create Linode** button. Once the Compute Instance has provisioned and has fully powered on, **wait for the software installation to complete**. If the instance is powered off or restarted before this time, the software installation will likely fail.

6. Follow the instructions within the [Getting Started After Deployment](https://linode.com/docs/products/tools/marketplace/guides/mastodon/#getting-started-after-deployment) section to access and start using your application.

**Estimated deployment time:** Mastodon should be fully installed within 10-15 minutes after the Compute Instance has finished provisioning.

### Mastodon Options

| Name	| Description	
| :---	| :---		
| **Linode API Token**	| A valid Linode API token with Read/Write permissions to Domains. *Required*
| **SOA Email** | An email address you control to be the Source of Authority for the generated DNS zone. *Required* 
| **Domain** | A valid domain name for your Mastodon instance, with Linode's name servers configured as the [authoritative name servers](https://www.linode.com/docs/products/networking/dns-manager/get-started/#use-linodes-name-servers). *Required* 
| **Mastodon Owner User** | The username for the Admin user that will be created for the Mastodon server. *Required* 
| **Mastodon Owner Email** | The contact email for the Admin user that will be created for the Mastodon server. *Required*   
| **Single User Mode** | Enabling Single User Mode prevents other users from joining the Mastodon Server, while disabling it allows it. *Required* 
