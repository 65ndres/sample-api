# sample-api

Rails API template with auth, messaging, subscriptions, and onboarding.

## Setup

```bash
bundle install
cp .env.example .env   # set DEVISE_JWT_SECRET_KEY and SUPPORT_USER_PASSWORD
bin/rails db:prepare
bin/rails db:seed      # optional: support user, plans, sample users
```

## API surface (`/api/v1`)

**Auth**
- `POST /auth/login`, `POST /auth/signup`, `DELETE /auth/logout`
- `POST /auth/password`, `POST /auth/password/verify`, `PUT|PATCH /auth/password`
- `GET /auth/refresh-user`

**Users**
- `GET /user`, `POST /user`, `POST /user/delete`
- `GET /users/search`

**Conversations & messages**
- `POST /conversation/new`
- `GET /conversations/admin_conversation`
- `GET /user/conversations`
- `GET|POST /conversations/:conversation_id/messages`

**Subscriptions**
- `GET /subscription/status`, `GET /subscriptions`
- `POST /subscription/validate`, `POST /subscription/sync`
- `POST /subscription/create_basic_subscription`, `POST /subscription/create_pro_subscription`
- `POST /receipts`
- `POST /webhooks/revenuecat`

**Onboarding**
- `GET /onboarding`, `GET /onboarding/completed_onboarding`

## Tests

```bash
bin/rails test
```
# tiny-rest-api
