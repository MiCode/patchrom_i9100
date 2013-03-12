.class Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;
.super Landroid/app/AlertDialog;
.source "PenDetachmentAlertDialog.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PenDetachmentAlertDialog"

.field private static isBoxChecked:Z


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    .line 37
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-boolean p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->playPressSound()V

    return-void
.end method

.method private playPressSound()V
    .locals 7

    .prologue
    .line 88
    const-string v0, "/system/media/audio/ui/TW_Touch.ogg"

    .line 90
    .local v0, PRESS_SOUND:Ljava/lang/String;
    const-string v5, "/system/media/audio/ui/TW_Touch.ogg"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 91
    .local v4, soundUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 93
    .local v3, sfx:Landroid/media/Ringtone;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 95
    .local v1, audioManager:Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 96
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 104
    .local v2, ringerMode:I
    :goto_0
    const/4 v5, 0x2

    if-ne v5, v2, :cond_0

    .line 105
    if-eqz v3, :cond_0

    .line 106
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 107
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 100
    .end local v2           #ringerMode:I
    :cond_1
    const/4 v2, 0x2

    .restart local v2       #ringerMode:I
    goto :goto_0

    .line 115
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setView(Landroid/view/View;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setInverseBackgroundForced(Z)V

    .line 49
    const v0, 0x1040014

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setTitle(I)V

    .line 50
    const v0, 0x1080304

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setIcon(I)V

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 55
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method
