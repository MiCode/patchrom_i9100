.class public final Lcom/sec/android/internal/ims/external/MenuDetails$User;
.super Ljava/lang/Object;
.source "MenuDetails.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/MenuDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME_HIDDEN_MENU:Ljava/lang/String; = "HiddenMenuContent.db"

.field public static final DB_HIDDEN_MENU_DEL_URI:Landroid/net/Uri; = null

.field public static final DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME_HIDDEN_MENU:Ljava/lang/String; = "HiddenMenu"

.field public static final mAlwaysOn:Ljava/lang/String; = "mAlwaysOn"

.field public static final mAudioFirst:Ljava/lang/String; = "mAudioFirst"

.field public static final mAutoTest:Ljava/lang/String; = "mAutoTest"

.field public static final mBuildType:Ljava/lang/String; = "mBuildType"

.field public static final mEnableQos:Ljava/lang/String; = "mEnableQos"

.field public static final mImsPdnAutoCon:Ljava/lang/String; = "mImsPdnAutoCon"

.field public static final mLoopback:Ljava/lang/String; = "mLoopback"

.field public static final mPrefAudioCodec:Ljava/lang/String; = "mPrefAudioCodec"

.field public static final mPrefCscfDns:Ljava/lang/String; = "mPrefCscfDns"

.field public static final mPrefCscfDomain:Ljava/lang/String; = "mPrefCscfDomain"

.field public static final mPrefCscfIp:Ljava/lang/String; = "mPrefCscfIp"

.field public static final mPrefCscfPort:Ljava/lang/String; = "mPrefCscfPort"

.field public static final mPrefVideoCodec:Ljava/lang/String; = "mPrefVideoCodec"

.field public static final mPrefXdmDns:Ljava/lang/String; = "mPrefXdmDns"

.field public static final mPrefXdmIp:Ljava/lang/String; = "mPrefXdmIp"

.field public static final mQosAware:Ljava/lang/String; = "mQosAware"

.field public static final mVTDebugging:Ljava/lang/String; = "mVTDebugging"

.field public static final mVideoProfile:Ljava/lang/String; = "mVideoProfile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "content://com.example.MyContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/MenuDetails$User;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.example.MyContentProvider/HiddenMenu"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://com.example.MyContentProvider/HiddenMenu/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_DEL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
