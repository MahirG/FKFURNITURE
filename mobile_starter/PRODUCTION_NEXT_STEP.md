# Production Next Step Plan (v1)

This document defines the immediate implementation plan to move the current starter into a production-ready v1.

## 1) Authentication (OTP)
- Implement phone number OTP sign-in.
- Persist user session securely.
- Add logout and account deletion flows.

## 2) Supabase backend integration
- Replace in-memory `ProfileRepository` with Supabase-backed repository.
- Create tables:
  - `profiles`
  - `profile_photos`
  - `likes`
  - `matches`
  - `messages`
  - `reports`
  - `blocks`
- Add row-level security policies for private data.

## 3) Profile onboarding completion
- Convert single-page profile form into multi-step flow:
  - Basic info
  - Lifestyle and preferences
  - Photos
  - Review
- Add form progress indicator and autosave drafts.

## 4) Discover and matching logic
- Implement filtered discover queries (age, city, language, intent).
- Add like/pass persistence.
- Auto-create match on mutual like.

## 5) Messaging + safety
- Enable chat for matched users only.
- Add report/block controls in profile and chat screens.
- Add moderation queue and admin actions.

## 6) Localization quality
- Expand translation keys to cover all screens and errors.
- Review Amharic and Afaan Oromo copy with native speakers.

## 7) QA and release
- Unit tests for repositories/use-cases.
- Widget tests for onboarding/discover.
- TestFlight and internal Android beta.

## Suggested execution order (2-week sprint blocks)
1. OTP + Supabase schema + RLS
2. Profile multi-step + photos
3. Discover filtering + like/match
4. Chat + moderation + release prep
