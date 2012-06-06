.class public Lcom/android/OriginalSettings/Settings;
.super Lmiui/preference/BasePreferenceActivity;
.source "Settings.java"

# interfaces
.implements Lcom/android/OriginalSettings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/Settings$MenuPowerSavingModeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SoftwareUpdateSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$MotionSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DataUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$RunningServicesActivity;,
        Lcom/android/OriginalSettings/Settings$DockSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PrivacySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocationSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SecuritySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageUseActivity;,
        Lcom/android/OriginalSettings/Settings$ManageApplicationsActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DisplaySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SoundSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocalePickerActivity;,
        Lcom/android/OriginalSettings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DateTimeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$VpnSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TetherSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WirelessSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$BluetoothSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$HeaderAdapter;
    }
.end annotation


# instance fields
.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableLog:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mEnableLog:Z

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 637
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 386
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 403
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 387
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    .line 388
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 391
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 392
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 394
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 395
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 396
    if-eqz v2, :cond_0

    .line 397
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader()V
    .locals 4

    .prologue
    .line 231
    iget v1, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 233
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 238
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 177
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 193
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 196
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 198
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 199
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 201
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 202
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 203
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 204
    iput-object v4, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 206
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 207
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->highlightHeader()V

    .line 209
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 210
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 212
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .line 334
    .local v1, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 335
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 337
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v3

    .line 338
    .local v2, id:I
    const v3, 0x7f08027b

    if-ne v2, v3, :cond_3

    .line 339
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->needsDockSettings()Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 366
    :cond_1
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 368
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 372
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_3
    const v3, 0x7f08026c

    if-eq v2, v3, :cond_4

    const v3, 0x7f080275

    if-ne v2, v3, :cond_5

    .line 342
    :cond_4
    invoke-static {p0, p1, v0}, Lcom/android/OriginalSettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 343
    :cond_5
    const v3, 0x7f080269

    if-ne v2, v3, :cond_6

    .line 345
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    :cond_6
    const v3, 0x7f08026a

    if-ne v2, v3, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.bluetooth"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #id:I
    :cond_7
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 242
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 243
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 247
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 248
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 250
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 251
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 255
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 259
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 253
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 259
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    :cond_3
    const-class v0, Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f050036

    invoke-virtual {p0, v0, p1}, Lcom/android/OriginalSettings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 329
    iput-object p1, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    .line 330
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/preference/BasePreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 308
    const-class v1, Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/OriginalSettings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    :cond_1
    const-class v1, Lcom/android/OriginalSettings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 317
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mEnableLog:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "Settings"

    const-string v1, "Settings onCreate() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->getMetaData()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 98
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iput-boolean v2, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->highlightHeader()V

    .line 105
    const v0, 0x7f0b0176

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/Settings;->setTitle(I)V

    .line 109
    :cond_2
    if-eqz p1, :cond_3

    .line 110
    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 111
    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 115
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/OriginalSettings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/Settings$1;-><init>(Lcom/android/OriginalSettings/Settings;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/OriginalSettings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_5
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mEnableLog:Z

    if-eqz v0, :cond_6

    const-string v0, "Settings"

    const-string v1, "Settings onCreate() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_6
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 288
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 290
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 291
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 293
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 294
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 298
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 221
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 161
    iget-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mEnableLog:Z

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "Settings"

    const-string v2, "Settings onResume() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 168
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_1

    .line 169
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->pause()V

    .line 171
    :cond_1
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 570
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 571
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const v3, 0x7f0b033a

    .line 574
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/OriginalSettings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 149
    iget-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mEnableLog:Z

    if-eqz v1, :cond_0

    const-string v1, "Settings"

    const-string v2, "Settings onResume() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 153
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_1

    .line 154
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->resume()V

    .line 156
    :cond_1
    iget-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mEnableLog:Z

    if-eqz v1, :cond_2

    const-string v1, "Settings"

    const-string v2, "Settings onResume() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    .line 584
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 585
    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Lmiui/preference/BasePreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 182
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 183
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 185
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 186
    return-void
.end method
