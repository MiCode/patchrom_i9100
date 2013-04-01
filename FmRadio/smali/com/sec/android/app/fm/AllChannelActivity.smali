.class public Lcom/sec/android/app/fm/AllChannelActivity;
.super Landroid/app/Activity;
.source "AllChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;
    }
.end annotation


# static fields
.field private static cl_normal:Landroid/content/res/ColorStateList;

.field private static cl_yellow:Landroid/content/res/ColorStateList;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBackKey:Z

.field private mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

.field mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

.field private mChannelListView:Landroid/widget/ListView;

.field private mDeleteDialog:Landroid/app/Dialog;

.field protected mHandler:Landroid/os/Handler;

.field private mMaxFavoriteToast:Landroid/widget/Toast;

.field private mMenu:Landroid/view/Menu;

.field mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

.field private mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

.field private mSavedSelectedFreq:F

.field private mScanFinishedDialog:Landroid/app/AlertDialog;

.field private mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

.field private unableScanToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/sec/android/app/fm/AllChannelActivity;->cl_normal:Landroid/content/res/ColorStateList;

    .line 84
    sput-object v0, Lcom/sec/android/app/fm/AllChannelActivity;->cl_yellow:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 60
    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    .line 61
    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mDeleteDialog:Landroid/app/Dialog;

    .line 62
    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    .line 82
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->unableScanToast:Landroid/widget/Toast;

    .line 90
    new-instance v0, Lcom/sec/android/app/fm/AllChannelActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/AllChannelActivity$1;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    .line 876
    return-void
.end method

.method private CheckDelete_Already_Tuened()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x4120

    const/high16 v6, -0x4080

    .line 630
    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v1

    .line 631
    .local v1, freq:F
    cmpl-float v5, v1, v6

    if-eqz v5, :cond_0

    .line 632
    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 633
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_0

    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v5, v5, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 634
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/fm/AllChannelActivity;->search(Ljava/lang/Float;)F

    move-result v4

    .line 635
    .local v4, tFreq:F
    float-to-int v3, v4

    .line 636
    .local v3, freqInt:I
    mul-float v5, v4, v7

    rem-float/2addr v5, v7

    float-to-int v2, v5

    .line 638
    .local v2, freqDec:I
    cmpl-float v5, v4, v6

    if-eqz v5, :cond_0

    .line 639
    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 640
    const v5, 0x7f0a0004

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 648
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #freqDec:I
    .end local v3           #freqInt:I
    .end local v4           #tFreq:F
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->refreshScanIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/AllChannelActivity;)Lcom/sec/android/app/fm/data/Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/fm/AllChannelActivity;Lcom/sec/android/app/fm/data/Channel;)Lcom/sec/android/app/fm/data/Channel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/AllChannelActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->CheckDelete_Already_Tuened()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMaxFavoriteToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/fm/AllChannelActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMaxFavoriteToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getFrequencyAsScale(F)Ljava/lang/String;
    .locals 5
    .parameter "Freq"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 449
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 450
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private refreshScanIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1151
    const-string v0, "AllChannelActivity"

    const-string v1, "refresh Scan Icon"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1153
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020100

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ff

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private registerRestoreReceiver()V
    .locals 2

    .prologue
    .line 1090
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1092
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1094
    new-instance v1, Lcom/sec/android/app/fm/AllChannelActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/AllChannelActivity$10;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1113
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1115
    return-void
.end method

.method private search(Ljava/lang/Float;)F
    .locals 7
    .parameter "freq"

    .prologue
    .line 651
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 652
    const/high16 v4, -0x4080

    .line 665
    :goto_0
    return v4

    .line 653
    :cond_0
    const/high16 v2, 0x4348

    .line 654
    .local v2, least:F
    const/4 v3, 0x0

    .line 655
    .local v3, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 657
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/data/Channel;

    iget v4, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 658
    .local v0, diff:F
    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    .line 659
    move v2, v0

    .line 660
    move v3, v1

    .line 655
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 663
    .end local v0           #diff:F
    :cond_2
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this is the pos :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 665
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/data/Channel;

    iget v4, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    goto :goto_0
.end method

.method private setEmptView()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1138
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/AllChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1139
    .local v1, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1141
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030012

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1142
    .local v0, emptyView:Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1144
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1147
    return-void
.end method

.method private unregisterRestoreReceiver()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1127
    :cond_0
    return-void
.end method


# virtual methods
.method protected Rename_FreqName()V
    .locals 8

    .prologue
    const v7, 0x7f0a0009

    const/4 v6, 0x0

    const/high16 v5, -0x4080

    .line 593
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, freqRename:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-eqz v4, :cond_0

    .line 596
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    iget v4, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 602
    .local v2, freq:Ljava/lang/Float;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 603
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 604
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 605
    iput-object v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 607
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 609
    :try_start_0
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/MainActivity;->notifyToStatusBar()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 624
    return-void

    .line 597
    .end local v2           #freq:Ljava/lang/Float;
    :cond_0
    iget v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 598
    iget v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .restart local v2       #freq:Ljava/lang/Float;
    goto :goto_0

    .line 600
    .end local v2           #freq:Ljava/lang/Float;
    :cond_1
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .restart local v2       #freq:Ljava/lang/Float;
    goto :goto_0

    .line 610
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    :catch_0
    move-exception v1

    .line 612
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 613
    :catch_1
    move-exception v4

    goto :goto_1

    .line 618
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_2
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 621
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_3
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1133
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1134
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->setEmptView()V

    .line 1135
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 406
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 417
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 408
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->showDialog(I)V

    goto :goto_0

    .line 411
    :pswitch_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->showDialog(I)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const-string v2, "AllChannelActivity"

    const-string v3, "onCreate() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-nez v2, :cond_0

    .line 239
    const-string v2, "AllChannelActivity"

    const-string v3, "onCreate - MainActivity._instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->finish()V

    .line 390
    :goto_0
    return-void

    .line 243
    :cond_0
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->setContentView(I)V

    .line 244
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 251
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->setEmptView()V

    .line 254
    const v2, 0x7f0a001f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->setTitle(I)V

    .line 257
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 259
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 260
    :try_start_0
    new-instance v2, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    const v4, 0x7f030006

    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v5, v5, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v4, v5}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/fm/MainActivity;->registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 267
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_1
    if-eqz p1, :cond_2

    .line 272
    const-string v2, "FMApp"

    const-string v3, "AllChannelActivity : onCreate savedinstancestate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v2, "selected_freq"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F

    .line 280
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 281
    .local v1, xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/AllChannelActivity;->cl_normal:Landroid/content/res/ColorStateList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 305
    .restart local v1       #xpp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/AllChannelActivity;->cl_yellow:Landroid/content/res/ColorStateList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    .end local v1           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mHandler:Landroid/os/Handler;

    .line 342
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/app/fm/AllChannelActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/AllChannelActivity$2;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 386
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->registerRestoreReceiver()V

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mChannelListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 267
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v2, :cond_3

    .line 284
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllChannelActivity : ColorStateList 1 : "

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

    .line 306
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 307
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v2, :cond_4

    .line 308
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllChannelActivity : ColorStateList 3 : "

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
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 424
    if-nez p3, :cond_0

    .line 425
    const-string v4, "AllChannelActivity"

    const-string v5, "onCreateContextMenu - menuInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-void

    .line 431
    :cond_0
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    iget-wide v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/data/Channel;

    iput-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    .line 437
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    iget-wide v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/data/Channel;

    iget v3, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 440
    .local v3, selectedFreq:F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/AllChannelActivity;->getFrequencyAsScale(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MHz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 441
    const/4 v4, 0x4

    const v5, 0x7f0a00a6

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 442
    const/4 v4, 0x5

    const v5, 0x7f0a0025

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 444
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 432
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v3           #selectedFreq:F
    :catch_0
    move-exception v1

    .line 433
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v6, 0x7f0a0021

    const v8, 0x7f0a0020

    const v4, 0x7f0a001b

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 462
    packed-switch p1, :pswitch_data_0

    .line 587
    :pswitch_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 466
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    .line 467
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a000c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/fm/AllChannelActivity$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/AllChannelActivity$4;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/fm/AllChannelActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/AllChannelActivity$3;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 494
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 497
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_1

    .line 498
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0041

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0015

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/fm/AllChannelActivity$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/AllChannelActivity$5;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    .line 510
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 514
    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    .local v2, twalertdialog3:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 516
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f0a0045

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0a0046

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    new-instance v4, Lcom/sec/android/app/fm/AllChannelActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/AllChannelActivity$6;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 546
    .end local v2           #twalertdialog3:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    const/4 v1, 0x0

    .line 547
    .local v1, deletemsg:Ljava/lang/String;
    const v3, 0x7f0a00ca

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a00a6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 550
    const v3, 0x7f0a00ca

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 551
    new-instance v3, Lcom/sec/android/app/fm/AllChannelActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/AllChannelActivity$7;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v0, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 569
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #deletemsg:Ljava/lang/String;
    :pswitch_5
    new-instance v3, Lcom/sec/android/app/fm/ui/RenameDialog;

    new-instance v4, Lcom/sec/android/app/fm/AllChannelActivity$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/AllChannelActivity$8;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-direct {v3, p0, v7, v4}, Lcom/sec/android/app/fm/ui/RenameDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 577
    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    new-instance v4, Lcom/sec/android/app/fm/AllChannelActivity$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/AllChannelActivity$9;-><init>(Lcom/sec/android/app/fm/AllChannelActivity;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/ui/RenameDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 584
    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    goto/16 :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 745
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;

    .line 746
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 860
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 861
    const-string v0, "AllChannelActivity"

    const-string v1, "onDestroy() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 863
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mCallback:Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V

    .line 867
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->unregisterRestoreReceiver()V

    .line 869
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 734
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 737
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 799
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 853
    :goto_0
    return v3

    .line 802
    :sswitch_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[MENU_REMOVE] AllChannelActivity"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 803
    iput-boolean v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 804
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 809
    :sswitch_1
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[MENU_RENAME] AllChannelActivity"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 810
    iput-boolean v3, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 811
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 815
    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0a0006

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MHz."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 827
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    const v0, 0x7f0a0008

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 837
    :cond_1
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_3

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->unableScanToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 839
    const/4 v0, 0x0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->unableScanToast:Landroid/widget/Toast;

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->unableScanToast:Landroid/widget/Toast;

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->unableScanToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 843
    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 847
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->finish()V

    goto/16 :goto_0

    .line 799
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 670
    packed-switch p1, :pswitch_data_0

    .line 678
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 679
    return-void

    :pswitch_0
    move-object v0, p2

    .line 672
    check-cast v0, Lcom/sec/android/app/fm/ui/RenameDialog;

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->setText(Lcom/sec/android/app/fm/data/Channel;)V

    goto :goto_0

    .line 670
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 753
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 756
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-nez v1, :cond_0

    .line 757
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 791
    :goto_0
    return v1

    .line 759
    :cond_0
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 760
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 764
    :cond_1
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 765
    const v1, 0x7f0a001b

    invoke-interface {p1, v2, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 766
    .local v0, menuItem:Landroid/view/MenuItem;
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    const v1, 0x7f020100

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 768
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 773
    :goto_1
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 774
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 770
    :cond_2
    const v1, 0x7f0200ff

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 771
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 777
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_3
    const v1, 0x7f0a00a6

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 778
    .restart local v0       #menuItem:Landroid/view/MenuItem;
    const v1, 0x7f0200fc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 779
    const v1, 0x7f0a0025

    invoke-interface {p1, v2, v5, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 780
    const v1, 0x7f0200fe

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 781
    const v1, 0x7f0a001b

    invoke-interface {p1, v2, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 782
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 783
    const v1, 0x7f020100

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 784
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 789
    :goto_2
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 791
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 786
    :cond_4
    const v1, 0x7f0200ff

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 787
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 686
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 687
    const-string v0, "AllChannelActivity"

    const-string v1, "onResume() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 690
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated data set :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 696
    :cond_0
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->load()V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 703
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 705
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->refreshScanIcon()V

    .line 707
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->invalidateOptionsMenu()V

    .line 709
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 396
    const-string v1, "FMApp"

    const-string v2, "AllChannelActivity : onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    iget v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 399
    .local v0, freq:Ljava/lang/Float;
    const-string v1, "selected_freq"

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 401
    .end local v0           #freq:Ljava/lang/Float;
    :cond_1
    return-void

    .line 398
    :cond_2
    iget v1, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mSavedSelectedFreq:F

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 715
    const-string v0, "AllChannelActivity"

    const-string v1, "onStop() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-boolean v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    if-nez v0, :cond_2

    .line 718
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 719
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->widgetRefresh(Landroid/content/Context;)V

    .line 724
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/AllChannelActivity;->mBackKey:Z

    .line 726
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 727
    return-void
.end method

.method public setChanFreqWidth(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, fontSize:Ljava/lang/String;
    const v2, 0x7f070008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1067
    .local v1, txtChannelFreq:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1068
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1072
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1076
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/AllChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
