.class public final enum LMicrosoft/Telemetry/Extensions/TracingEventLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LMicrosoft/Telemetry/Extensions/TracingEventLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Critical:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Error:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Informational:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum LogAlways:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum None:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Verbose:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Warning:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum __INVALID_ENUM_VALUE:LMicrosoft/Telemetry/Extensions/TracingEventLevel;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->None:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    new-instance v1, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v3, "Critical"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Critical:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    new-instance v3, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v5, "Error"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Error:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    new-instance v5, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v7, "Informational"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Informational:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    new-instance v7, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v9, "LogAlways"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->LogAlways:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    new-instance v9, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v11, "Verbose"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Verbose:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    new-instance v11, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v13, "Warning"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v11, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Warning:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    new-instance v13, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v15, "__INVALID_ENUM_VALUE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v13, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->__INVALID_ENUM_VALUE:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const/16 v15, 0x8

    new-array v15, v15, [LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->$VALUES:[LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->value:I

    return-void
.end method

.method public static fromValue(I)LMicrosoft/Telemetry/Extensions/TracingEventLevel;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->__INVALID_ENUM_VALUE:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0

    :pswitch_0
    sget-object p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Warning:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0

    :pswitch_1
    sget-object p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Verbose:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0

    :pswitch_2
    sget-object p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->LogAlways:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0

    :pswitch_3
    sget-object p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Informational:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0

    :pswitch_4
    sget-object p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Error:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0

    :pswitch_5
    sget-object p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Critical:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0

    :pswitch_6
    sget-object p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->None:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)LMicrosoft/Telemetry/Extensions/TracingEventLevel;
    .locals 1

    const-class v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object p0
.end method

.method public static values()[LMicrosoft/Telemetry/Extensions/TracingEventLevel;
    .locals 1

    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->$VALUES:[LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    invoke-virtual {v0}, [LMicrosoft/Telemetry/Extensions/TracingEventLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->value:I

    return v0
.end method
