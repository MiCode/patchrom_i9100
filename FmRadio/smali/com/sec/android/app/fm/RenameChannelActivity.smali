.class public Lcom/sec/android/app/fm/RenameChannelActivity;
.super Landroid/app/Activity;
.source "RenameChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/RenameChannelActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static cl_normal:Landroid/content/res/ColorStateList;

.field private static cl_normal_station:Landroid/content/res/ColorStateList;

.field private static cl_yellow:Landroid/content/res/ColorStateList;

.field private static toast:Landroid/widget/Toast;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBackKey:Z

.field private mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

.field mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

.field private mChannelListView:Landroid/widget/ListView;

.field private mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

.field private mSavedSelectedFreq:F

.field private mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->cl_normal:Landroid/content/res/ColorStateList;

    .line 56
    sput-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->cl_normal_station:Landroid/content/res/ColorStateList;

    .line 57
    sput-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->cl_yellow:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSavedSelectedFreq:F

    .line 70
    new-instance v0, Lcom/sec/android/app/fm/RenameChannelActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$1;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RenameChannelActivity;)Lcom/sec/android/app/fm/data/Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/fm/RenameChannelActivity;Lcom/sec/android/app/fm/data/Channel;)Lcom/sec/android/app/fm/data/Channel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/RenameChannelActivity;)Lcom/sec/android/app/fm/ui/RenameDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/RenameChannelActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSavedSelectedFreq:F

    return v0
.end method

.method static synthetic access$400()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->cl_normal_station:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private registerRestoreReceiver()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 544
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    new-instance v1, Lcom/sec/android/app/fm/RenameChannelActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$5;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    return-void
.end method

.method private unregisterRestoreReceiver()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 579
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v8, 0x7f0a0009

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, -0x4080

    .line 350
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 352
    if-ne p1, v7, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 353
    const-string v4, "com.samsung.app.fm.radio.freq.renamed"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, freqRen:Ljava/lang/String;
    const-string v4, "com.samsung.app.fm.radio.freq"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 357
    .local v2, freq:Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 359
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 360
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 363
    iput-object v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 367
    :try_start_0
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/MainActivity;->notifyToStatusBar()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #freq:Ljava/lang/Float;
    .end local v3           #freqRen:Ljava/lang/String;
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->finish()V

    .line 384
    return-void

    .line 368
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    .restart local v2       #freq:Ljava/lang/Float;
    .restart local v3       #freqRen:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 371
    :catch_1
    move-exception v4

    goto :goto_0

    .line 374
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_1
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 378
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_2
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RenameChannelActivity;->setContentView(I)V

    .line 103
    const v2, 0x7f0a0042

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RenameChannelActivity;->setTitle(I)V

    .line 104
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RenameChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mChannelListView:Landroid/widget/ListView;

    .line 107
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-nez v2, :cond_0

    .line 108
    const-string v2, "FMApp"

    const-string v3, "Main instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->finish()V

    .line 196
    :goto_0
    return-void

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    const-string v2, "FMApp"

    const-string v3, "RenameChannelActivity : onCreate savedinstancestate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v2, "selected_freq"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSavedSelectedFreq:F

    .line 120
    :cond_1
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 121
    :try_start_0
    new-instance v2, Lcom/sec/android/app/fm/RenameChannelActivity$MyAdapter;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$MyAdapter;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 122
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mChannelListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/fm/MainActivity;->registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 124
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 127
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 128
    .local v1, xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/RenameChannelActivity;->cl_normal:Landroid/content/res/ColorStateList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 135
    .restart local v1       #xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/RenameChannelActivity;->cl_normal_station:Landroid/content/res/ColorStateList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 157
    .restart local v1       #xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/RenameChannelActivity;->cl_yellow:Landroid/content/res/ColorStateList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 169
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mChannelListView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/app/fm/RenameChannelActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$2;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 194
    invoke-direct {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->registerRestoreReceiver()V

    goto/16 :goto_0

    .line 124
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " RenameChannelActivity : ColorStateList 1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 137
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " RenameChannelActivity : ColorStateList 2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 159
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " RenameChannelActivity : ColorStateList 3 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 215
    packed-switch p1, :pswitch_data_0

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 217
    :pswitch_0
    new-instance v0, Lcom/sec/android/app/fm/ui/RenameDialog;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/fm/RenameChannelActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$3;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/fm/ui/RenameDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    new-instance v1, Lcom/sec/android/app/fm/RenameChannelActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameChannelActivity$4;-><init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 337
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->unregisterRestoreReceiver()V

    .line 344
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 326
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    .line 329
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 501
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 509
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 503
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->finish()V

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 317
    sget-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lcom/sec/android/app/fm/RenameChannelActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 319
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 276
    packed-switch p1, :pswitch_data_0

    .line 282
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 285
    .end local p2
    :goto_0
    return-void

    .line 278
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/sec/android/app/fm/ui/RenameDialog;

    .end local p2
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->setText(Lcom/sec/android/app/fm/data/Channel;)V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 294
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->load()V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    .line 299
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    const-string v1, "FMApp"

    const-string v2, "RenameChannelActivity : onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSavedSelectedFreq:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    iget v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 207
    .local v0, freq:Ljava/lang/Float;
    const-string v1, "selected_freq"

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 210
    .end local v0           #freq:Ljava/lang/Float;
    :cond_1
    return-void

    .line 206
    :cond_2
    iget v1, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mSavedSelectedFreq:F

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_1

    .line 306
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 307
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->widgetRefresh(Landroid/content/Context;)V

    .line 310
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity;->mBackKey:Z

    .line 312
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 313
    return-void
.end method

.method public setChanFreqWidth(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, fontSize:Ljava/lang/String;
    const v2, 0x7f070008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 519
    .local v1, txtChannelFreq:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 520
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 524
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_0

    .line 534
    :catch_0
    move-exception v2

    goto :goto_0

    .line 528
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
