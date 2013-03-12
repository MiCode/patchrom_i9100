.class Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService$RulesEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Rule"
.end annotation


# instance fields
.field private mPermitted:Z

.field private final mRegex:Ljava/util/regex/Pattern;

.field private final mRegexStr:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/DeviceManager3LMService$RulesEngine;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService$RulesEngine;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "regexStr"
    .parameter "permitted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->this$1:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1402
    iput-object p2, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;

    .line 1403
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegex:Ljava/util/regex/Pattern;

    .line 1404
    iput-boolean p3, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mPermitted:Z

    .line 1405
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1396
    iget-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mPermitted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    iput-boolean p1, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mPermitted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegex:Ljava/util/regex/Pattern;

    return-object v0
.end method
