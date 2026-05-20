.class synthetic Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$AccountProvisioningFragment$Status:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$EventInitializationFragment$Status:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$IntroducingFragment$Status:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$MSAFragment$Status:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$SignUpFragment$Status:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$StartSignInFragment$Status:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$WelcomeFragment$Status:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$XBLoginFragment$Status:[I

.field public static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$XBLogoutFragment$Status:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLogoutFragment$Status:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLogoutFragment$Status:[I

    sget-object v3, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$WelcomeFragment$Status:[I

    :try_start_2
    sget-object v3, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$WelcomeFragment$Status:[I

    sget-object v3, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$WelcomeFragment$Status:[I

    sget-object v4, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$WelcomeFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$IntroducingFragment$Status:[I

    :try_start_6
    sget-object v5, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$IntroducingFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$IntroducingFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$SignUpFragment$Status:[I

    :try_start_9
    sget-object v5, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$SignUpFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$SignUpFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$SignUpFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$EventInitializationFragment$Status:[I

    :try_start_d
    sget-object v5, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$EventInitializationFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$EventInitializationFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AccountProvisioningFragment$Status:[I

    :try_start_10
    sget-object v5, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AccountProvisioningFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AccountProvisioningFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLoginFragment$Status:[I

    :try_start_13
    sget-object v5, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLoginFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLoginFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$MSAFragment$Status:[I

    :try_start_16
    sget-object v5, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$MSAFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$MSAFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;->values()[Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$StartSignInFragment$Status:[I

    :try_start_19
    sget-object v5, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$StartSignInFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$StartSignInFragment$Status:[I

    sget-object v5, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->values()[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

    :try_start_1c
    sget-object v5, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->SIGN_UP:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

    sget-object v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->INTRODUCING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->WELCOME:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGOUT:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method
