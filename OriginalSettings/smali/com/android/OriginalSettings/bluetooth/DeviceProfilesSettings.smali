.class public final Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

.field private mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private addPreferencesForProfiles()V
    .locals 4

    .prologue
    .line 207
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 208
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 209
    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 211
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 212
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 301
    .local v0, device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 303
    const v6, 0x7f0b00fe

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    :cond_0
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, profileName:Ljava/lang/String;
    const v6, 0x7f0b00f3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0b00f4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 320
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/OriginalSettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 322
    return-void
.end method

.method private createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 234
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 237
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 238
    invoke-interface {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 239
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 242
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 251
    invoke-direct {p0, v1, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 253
    return-object v1
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 369
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-object v2

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .parameter "profIndex"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 5
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    .line 283
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 285
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 286
    .local v2, status:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v1, v3

    .line 289
    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 295
    :goto_1
    return-void

    .line 286
    .end local v1           #isConnected:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 292
    .restart local v1       #isConnected:Z
    :cond_1
    invoke-interface {p1, v0, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 293
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 334
    return-void
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 363
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 364
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 365
    invoke-interface {p2, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 366
    return-void

    .line 363
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 337
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 338
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 339
    .local v2, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_0

    .line 340
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 341
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 343
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 346
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 347
    .restart local v1       #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 348
    .local v2, profilePref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 349
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 353
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/Preference;
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 354
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 216
    .local v0, numProfiles:I
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 388
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    const-string v4, "device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 121
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    const v4, 0x7f050008

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 123
    const-string v4, "profile_container"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 124
    const-string v4, "rename_device"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    .line 125
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 127
    if-nez v1, :cond_1

    .line 128
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Activity started without a remote Bluetooth device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 151
    :goto_1
    return-void

    .line 117
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "device"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 132
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    new-instance v4, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    .line 134
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 136
    .local v2, deviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 137
    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 138
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_2

    .line 139
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Device not found, cannot connect to it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, deviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 160
    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 326
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 279
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 271
    .restart local p2
    :cond_1
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 272
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 273
    .local v0, prof:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 258
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, key:Ljava/lang/String;
    const-string v1, "unpair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 261
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 262
    const/4 v1, 0x1

    .line 265
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 172
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 173
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 174
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 177
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 178
    .local v3, et:Landroid/widget/EditText;
    if-eqz v3, :cond_3

    .line 179
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 181
    .local v1, d:Landroid/app/Dialog;
    instance-of v7, v1, Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    .line 182
    const/4 v6, 0x0

    .line 183
    .local v6, spaceNum:I
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 184
    .local v5, length:I
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, deviceName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 187
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    .line 188
    add-int/lit8 v6, v6, 0x1

    .line 186
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :cond_2
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 193
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-lez v7, :cond_4

    if-eq v5, v6, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    .end local v0           #b:Landroid/widget/Button;
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #length:I
    .end local v6           #spaceNum:I
    :cond_3
    return-void

    .line 193
    .restart local v0       #b:Landroid/widget/Button;
    .restart local v2       #deviceName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #length:I
    .restart local v6       #spaceNum:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    return-void
.end method
