.class public Lcom/android/settings/PenHovering;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenHovering.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private icon_label_state:I

.field private information_preview_state:I

.field private list_scroll_state:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mPenHoveringEnabler:Lcom/android/settings/PenHoveringEnabler;

.field private mPenHoveringObserver:Landroid/database/ContentObserver;

.field private mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

.field private mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

.field private mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

.field private mToggleHoveringPointer:Landroid/preference/CheckBoxPreference;

.field private pointer_state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings/PenHovering$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PenHovering$1;-><init>(Lcom/android/settings/PenHovering;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PenHovering;->mPenHoveringObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenHovering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/PenHovering;->updatePenHoveringSaving()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const/16 v7, 0x10

    const/4 v9, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    .line 185
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 186
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 187
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f0002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 189
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 190
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 196
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    .line 199
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    new-instance v3, Lcom/android/settings/PenHoveringEnabler;

    iget-object v6, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v6}, Lcom/android/settings/PenHoveringEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mPenHoveringEnabler:Lcom/android/settings/PenHoveringEnabler;

    .line 201
    const-string v3, "hovering_pointer"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenHovering;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringPointer:Landroid/preference/CheckBoxPreference;

    .line 202
    iget-object v6, p0, Lcom/android/settings/PenHovering;->mToggleHoveringPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "pen_hovering_pointer"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    const-string v3, "hovering_information_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenHovering;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    .line 204
    iget-object v6, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    const-string v3, "hovering_icon_label"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenHovering;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    .line 206
    iget-object v6, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "pen_hovering_icon_label"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    const-string v3, "hovering_list_scroll"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenHovering;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    .line 208
    iget-object v3, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_list_scroll"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_pointer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/PenHovering;->pointer_state:I

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/PenHovering;->information_preview_state:I

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/PenHovering;->icon_label_state:I

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/PenHovering;->list_scroll_state:I

    .line 217
    return-void

    :cond_1
    move v3, v5

    .line 202
    goto/16 :goto_0

    :cond_2
    move v3, v5

    .line 204
    goto :goto_1

    :cond_3
    move v3, v5

    .line 206
    goto :goto_2

    :cond_4
    move v4, v5

    .line 208
    goto :goto_3
.end method

.method private updatePenHoveringSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, State:I
    const-string v1, "PenHovering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePenHoveringSaving : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 238
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_pointer"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 170
    .local v3, hoveringPointer:I
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, hoveringInformationPreview:I
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_icon_label"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, hoveringIconLabel:I
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_list_scroll"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, hoveringListScroll:I
    const-string v5, "PenHovering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 175
    const/4 v4, 0x1

    .line 177
    :cond_0
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 143
    const-string v0, "PenHovering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 88
    const-string v0, "PenHovering"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHovering;->addPreferencesFromResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/PenHovering;->initializeAllPreferences()V

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    const-string v1, "PenHovering"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 128
    iget v1, p0, Lcom/android/settings/PenHovering;->pointer_state:I

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_pointer"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/PenHovering;->information_preview_state:I

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_information_preview"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/PenHovering;->icon_label_state:I

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_icon_label"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/PenHovering;->list_scroll_state:I

    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_list_scroll"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 132
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PEN_HOVERING_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PenHovering;->mPenHoveringEnabler:Lcom/android/settings/PenHoveringEnabler;

    invoke-virtual {v1}, Lcom/android/settings/PenHoveringEnabler;->pause()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenHovering;->mPenHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    const-string v0, "PenHovering"

    const-string v3, "onPreferenceTreeClick() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mToggleHoveringPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_pointer"

    iget-object v0, p0, Lcom/android/settings/PenHovering;->mToggleHoveringPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    iget-object v0, p0, Lcom/android/settings/PenHovering;->mToggleHoveringInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    iget-object v0, p0, Lcom/android/settings/PenHovering;->mToggleHoveringIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_4

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_list_scroll"

    iget-object v0, p0, Lcom/android/settings/PenHovering;->mToggleHoveringListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_5

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 102
    const-string v0, "PenHovering"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PenHovering;->updatePenHoveringSaving()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mPenHoveringEnabler:Lcom/android/settings/PenHoveringEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenHoveringEnabler;->resume()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/PenHovering;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PenHovering;->mPenHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "PenHovering"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/PenHovering;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_0
    return-void
.end method
