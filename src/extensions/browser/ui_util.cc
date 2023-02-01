// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "extensions/browser/ui_util.h"

#include "base/command_line.h"
#include "extensions/common/extension.h"
#include "extensions/common/switches.h"

namespace extensions {
namespace ui_util {

bool ShouldDisplayInExtensionSettings(Manifest::Type type,
                                      Manifest::Location location) {
  // Don't show for themes since the settings UI isn't really useful for them.
  if (type == Manifest::TYPE_THEME)
    return false;
  else
    return true;
}

bool ShouldDisplayInExtensionSettings(const Extension& extension) {
  return ShouldDisplayInExtensionSettings(extension.GetType(),
                                          extension.location());
}

}  // namespace ui_util
}  // namespace extensions
