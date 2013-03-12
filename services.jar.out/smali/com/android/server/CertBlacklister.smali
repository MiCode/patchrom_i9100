.class public Lcom/android/server/CertBlacklister;
.super Landroid/os/Binder;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CertBlacklister$BlacklistObserver;
    }
.end annotation


# static fields
.field private static final BLACKLIST_ROOT:Ljava/lang/String; = null

.field public static final PUBKEY_BLACKLIST_KEY:Ljava/lang/String; = "pubkey_blacklist"

.field public static final PUBKEY_PATH:Ljava/lang/String; = null

.field public static final SERIAL_BLACKLIST_KEY:Ljava/lang/String; = "serial_blacklist"

.field public static final SERIAL_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CertBlacklister"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pubkey_blacklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serial_blacklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlacklister;->SERIAL_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CertBlacklister;->registerObservers(Landroid/content/ContentResolver;)V

    .line 111
    return-void
.end method

.method private buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;
    .locals 4
    .parameter "cr"

    .prologue
    .line 114
    new-instance v0, Lcom/android/server/CertBlacklister$BlacklistObserver;

    const-string v1, "pubkey_blacklist"

    const-string v2, "pubkey"

    sget-object v3, Lcom/android/server/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;
    .locals 4
    .parameter "cr"

    .prologue
    .line 121
    new-instance v0, Lcom/android/server/CertBlacklister$BlacklistObserver;

    const-string v1, "serial_blacklist"

    const-string v2, "serial"

    sget-object v3, Lcom/android/server/CertBlacklister;->SERIAL_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private registerObservers(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v2, 0x1

    .line 129
    const-string v0, "pubkey_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/CertBlacklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    const-string v0, "serial_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/CertBlacklister;->buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    return-void
.end method
