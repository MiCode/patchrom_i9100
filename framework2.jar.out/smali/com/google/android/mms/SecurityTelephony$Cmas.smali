.class public final Lcom/google/android/mms/SecurityTelephony$Cmas;
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
    name = "Cmas"
.end annotation


# static fields
.field public static final ALERT_HANDLING:Ljava/lang/String; = "alert_handling"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CERTANITY:Ljava/lang/String; = "certainty"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXPIRED:Ljava/lang/String; = "expired"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field public static final SERVICE_CATEGORY:Ljava/lang/String; = "service_category"

.field public static final SEVERITY:Ljava/lang/String; = "severity"

.field public static final SMS_ID:Ljava/lang/String; = "sms_id"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final URGENCY:Ljava/lang/String; = "urgency"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 774
    const-string v0, "content://security_sms/cmas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 771
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
