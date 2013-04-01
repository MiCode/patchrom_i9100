.class public Lcom/sec/android/app/fm/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEFAULT_STORAGE:Ljava/lang/String;


# instance fields
.field private RecordingLocationValue:Ljava/lang/String;

.field private mAf:Landroid/preference/CheckBoxPreference;

.field private mAutoOnOff:Landroid/preference/ListPreference;

.field private mBackKey:Z

.field private mBgPlaying:Landroid/preference/CheckBoxPreference;

.field private mBroadcastReceiverRefreshSettings:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRecordingLocation:Landroid/preference/ListPreference;

.field private mStationId:Landroid/preference/CheckBoxPreference;

.field mStorageManager:Landroid/os/storage/StorageManager;

.field mStorageVolume:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/SettingsActivity;->DEFAULT_STORAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->RecordingLocationValue:Ljava/lang/String;

    .line 690
    new-instance v0, Lcom/sec/android/app/fm/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/SettingsActivity$1;-><init>(Lcom/sec/android/app/fm/SettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 725
    new-instance v0, Lcom/sec/android/app/fm/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/SettingsActivity$2;-><init>(Lcom/sec/android/app/fm/SettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverRefreshSettings:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->setInitialValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/SettingsActivity;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private getStorageVolumeCount()I
    .locals 9

    .prologue
    .line 651
    const-string v7, "SettingsActivity"

    const-string v8, "getStorageVolumeCount() is called."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v1, 0x0

    .line 654
    .local v1, count:I
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_0

    .line 655
    iget-object v7, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 658
    .local v4, item:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 659
    .local v6, path:Ljava/lang/String;
    const-string v7, "mounted"

    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 660
    add-int/lit8 v1, v1, 0x1

    .line 657
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 663
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v3           #i$:I
    .end local v4           #item:Landroid/os/storage/StorageVolume;
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 664
    .local v2, e:Ljava/lang/StackOverflowError;
    const-string v7, "SettingsActivity"

    const-string v8, "java.lang.StackOverflowError"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v1, 0x0

    .line 668
    .end local v2           #e:Ljava/lang/StackOverflowError;
    :cond_2
    return v1
.end method

.method private getStorageVolumeList()[Ljava/lang/String;
    .locals 11

    .prologue
    const v10, 0x7f0a00a9

    .line 598
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    if-nez v8, :cond_0

    .line 600
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 603
    .local v4, item:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 604
    .local v6, path:Ljava/lang/String;
    const-string v8, "mounted"

    iget-object v9, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 605
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    .end local v4           #item:Landroid/os/storage/StorageVolume;
    .end local v6           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 610
    .local v7, retValue:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_5

    .line 611
    if-nez v2, :cond_3

    .line 617
    const v8, 0x7f0a00aa

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 610
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 619
    :cond_3
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 620
    invoke-virtual {p0, v10}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    goto :goto_2

    .line 622
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    goto :goto_2

    .line 627
    :cond_5
    return-object v7
.end method

.method private getStorageVolumePath(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorageVolumePaths()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    if-nez v8, :cond_0

    .line 633
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 636
    .local v4, item:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 637
    .local v6, path:Ljava/lang/String;
    const-string v8, "mounted"

    iget-object v9, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 638
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v4           #item:Landroid/os/storage/StorageVolume;
    .end local v6           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 643
    .local v7, retValue:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 644
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v7, v2

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 647
    :cond_3
    return-object v7
.end method

.method private initRecordingLocation()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 543
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumeList()[Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, recordingLocation:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 546
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "initRecordingLocation :: recordingLocation is null"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 551
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumePaths()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 552
    if-eqz v2, :cond_3

    array-length v4, v2

    if-le v4, v6, :cond_3

    .line 553
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v4, v4, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v4, :cond_2

    .line 555
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 564
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "storage"

    sget-object v6, Lcom/sec/android/app/fm/SettingsActivity;->DEFAULT_STORAGE:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, strRecordingLocation:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/SettingsActivity;->setRecordingLocation(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 567
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumePath(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, defaultStr:Ljava/lang/String;
    const-string v4, "storage"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 569
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 557
    .end local v0           #defaultStr:Ljava/lang/String;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #strRecordingLocation:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 561
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private registerBroadcastReceiverRefreshSettings(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 713
    if-eqz p1, :cond_1

    .line 714
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 715
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "action_refresh_fmradio_setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverRefreshSettings:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 723
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverRefreshSettings:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverRefreshSettings:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 720
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverRefreshSettings:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastReceiverSDCard(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 672
    if-eqz p1, :cond_1

    .line 673
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 674
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 688
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 685
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private setAutoOnOffSummary(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method private setInitialValues()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->initRecordingLocation()V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBgPlaying:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "backgroudplaying"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENURDS:Z

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStationId:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "stationid"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    :cond_0
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENUAF:Z

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAf:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "af"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "autoonoff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 175
    .local v0, ivalue:I
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private setRecordingLocation(Ljava/lang/String;)Z
    .locals 6
    .parameter "strValue"

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumeCount()I

    move-result v1

    .line 575
    .local v1, length:I
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 576
    .local v3, value:I
    const/4 v2, 0x1

    .line 577
    .local v2, ret:Z
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-lt v3, v1, :cond_1

    .line 578
    :cond_0
    const/4 v3, 0x0

    .line 579
    const/4 v2, 0x0

    .line 581
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 582
    .local v0, charSequence:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 583
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 584
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 587
    :cond_2
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->addPreferencesFromResource(I)V

    .line 102
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENUAF:Z

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "af"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_0
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENURDS:Z

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "stationid"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 111
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/SettingsActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 112
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/SettingsActivity;->registerBroadcastReceiverRefreshSettings(Z)V

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, mode:I
    const-string v1, "SettingsPreference"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 119
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    .line 123
    const-string v1, "backgroudplaying"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBgPlaying:Landroid/preference/CheckBoxPreference;

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBgPlaying:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENURDS:Z

    if-nez v1, :cond_2

    .line 131
    const-string v1, "stationid"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStationId:Landroid/preference/CheckBoxPreference;

    .line 133
    :cond_2
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENUAF:Z

    if-nez v1, :cond_3

    .line 134
    const-string v1, "af"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAf:Landroid/preference/CheckBoxPreference;

    .line 136
    :cond_3
    const-string v1, "autoonoff"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    .line 138
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->setInitialValues()V

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 450
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 451
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 454
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 455
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->registerBroadcastReceiverRefreshSettings(Z)V

    .line 456
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 427
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 430
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 436
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 443
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 438
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->finish()V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 304
    iget-object v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, key:Ljava/lang/String;
    const-string v3, "backgroudplaying"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 319
    .local v2, value:Z
    const-string v3, "backgroudplaying"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 338
    .end local v2           #value:Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 340
    const/4 v3, 0x0

    return v3

    .line 320
    .restart local p2
    :cond_1
    const-string v3, "stationid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 322
    .restart local v2       #value:Z
    const-string v3, "stationid"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_0

    .line 326
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v3, p0}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    goto :goto_0

    .line 328
    .end local v2           #value:Z
    .restart local p2
    :cond_2
    const-string v3, "af"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 330
    .restart local v2       #value:Z
    const-string v3, "af"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_0

    .line 334
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 384
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "my resume setting-------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->refreshLayout()V

    .line 387
    iput-boolean v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "autoonoff"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 389
    .local v1, ivalue:I
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 393
    .local v0, autoOnOffdialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 395
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 406
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v9, 0x0

    .line 463
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 464
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "autoonoff"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 465
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 468
    .local v3, index:I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "this is the index its coming .."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    const-string v6, "autoonoff"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-direct {p0, v5}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 471
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    :try_start_0
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-nez v6, :cond_1

    .line 535
    .end local v3           #index:I
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 476
    .restart local v3       #index:I
    .restart local v5       #value:Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v6, :cond_0

    .line 480
    if-nez v3, :cond_3

    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v6}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 481
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v6, :cond_2

    .line 482
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 484
    :cond_2
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v7, 0x7f0a0060

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0x7f0a002e

    invoke-virtual {p0, v10}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 485
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_3
    :goto_1
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v6, :cond_0

    .line 496
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v6, p0}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 490
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 491
    :catch_1
    move-exception v6

    goto :goto_1

    .line 498
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v3           #index:I
    .end local v5           #value:Ljava/lang/String;
    :cond_4
    const-string v6, "storage"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 499
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, strValue:Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "this is the index its coming .."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->RecordingLocationValue:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 504
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "RecordingLocationValue is same as mRecordingLocation.getValue()"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :cond_5
    iput-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->RecordingLocationValue:Ljava/lang/String;

    .line 512
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/SettingsActivity;->setRecordingLocation(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 513
    const-string v6, "storage"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 518
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 515
    :cond_6
    invoke-direct {p0, v9}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumePath(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, defaultStr:Ljava/lang/String;
    const-string v6, "storage"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    if-nez v0, :cond_1

    .line 414
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 417
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 419
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 420
    return-void
.end method

.method public refreshLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 539
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 540
    return-void
.end method
