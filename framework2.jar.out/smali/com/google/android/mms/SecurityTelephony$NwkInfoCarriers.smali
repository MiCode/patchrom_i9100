.class public final Lcom/google/android/mms/SecurityTelephony$NwkInfoCarriers;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NwkInfoCarriers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_DORMPOLICY:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DORMANCY:Ljava/lang/String; = "dormancy"

.field public static final LCDOFFFDTIME:Ljava/lang/String; = "lcdofffdtime"

.field public static final LCDONFDTIME:Ljava/lang/String; = "lcdonfdtime"

.field public static final MTU:Ljava/lang/String; = "mtu"

.field public static final NWKNAME:Ljava/lang/String; = "nwkname"

.field public static final PLMN:Ljava/lang/String; = "plmn"

.field public static final SPCODE:Ljava/lang/String; = "spcode"

.field public static final SUBSETCODE:Ljava/lang/String; = "subsetcode"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2122
    const-string v0, "content://nwkinfo/nwkinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$NwkInfoCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2124
    const-string v0, "content://nwkinfo/nwkinfo/dormpolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$NwkInfoCarriers;->CONTENT_URI_DORMPOLICY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
