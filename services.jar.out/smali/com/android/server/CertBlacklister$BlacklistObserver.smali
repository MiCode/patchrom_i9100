.class Lcom/android/server/CertBlacklister$BlacklistObserver;
.super Landroid/database/ContentObserver;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CertBlacklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlacklistObserver"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mTmpDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "key"
    .parameter "name"
    .parameter "path"
    .parameter "cr"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 59
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mKey:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mName:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    .line 63
    iput-object p4, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private writeBlacklist()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;

    const-string v1, "BlacklistUpdater"

    invoke-direct {v0, p0, v1}, Lcom/android/server/CertBlacklister$BlacklistObserver$1;-><init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->start()V

    .line 106
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 69
    invoke-direct {p0}, Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V

    .line 70
    return-void
.end method
