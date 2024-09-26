// icons.ts
import { faHome, faSearch, faCamera, faCreditCard, faStore, faUser } from '@fortawesome/free-solid-svg-icons';
import { IconDefinition } from '@fortawesome/fontawesome-svg-core';

export const Icons: Record<string, IconDefinition> = {
  home: faHome,
  search: faSearch,
  post: faCamera,
  payment: faCreditCard,
  shop: faStore,
  profile: faUser,
};
