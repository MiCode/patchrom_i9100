.class public final Lcom/google/android/mms/SecurityTelephony$Mms$Rate;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rate"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SENT_TIME:Ljava/lang/String; = "sent_time"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1874
    sget-object v0, Lcom/google/android/mms/SecurityTelephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "rate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1873
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
