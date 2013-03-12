.class public final Lcom/google/android/mms/SecurityTelephony$Mms$Sent;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"

# interfaces
.implements Lcom/google/android/mms/SecurityTelephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sent"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1728
    const-string v0, "content://security_mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1723
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
