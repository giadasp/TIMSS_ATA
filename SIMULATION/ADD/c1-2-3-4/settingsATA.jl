Inputs = InputSettings(

    # 1. T
	[20],
    # 2. n_items
    Int(300),
    # 3. n_groups
    Int(1),
    # 4. groups
    ["main"],

    ####################################################################
    ########################## IRT #####################################
    ####################################################################

    # 5. IRT_model
    "2PL",
    # 6. IRT_parameters
    ["a", "b"],
    # 7. IRT_parametrization
    "at-b",
    # 8. IRT_D
    1,

    ####################################################################
    ######################FRIENDS AND ENEMIES###########################
    ####################################################################

    # 9. enemy_sets_var
	Vector{String}(undef,0),
    # 10. friend_sets_var
    ["Unit"],

    ####################################################################
    ########################### ITEM USE  ##############################
    ####################################################################

    # 11. item_use_min
    fill(0, 300),
    # 12. item_use_max
    fill(3, 300),

    ####################################################################
    ########################## TEST LENGHT #############################
    ####################################################################

    # 13. lenght_min
    [38],
    # 14. lenght_max
    [40],
    # 15. lenght_weight
    [1.0, 1.0, 1.0],

    ####################################################################
    ####################### EXPECTED SCORE #############################
    ####################################################################

    # 16. expected_score_var
	[""],
    # 17. expected_score_pts
	[ zeros(Float64,1) ] ,
    # 18. expected_score_min
	[ zeros(Float64,1) ] ,
    # 19. expected_score_max
	[ [1.0] ] ,

    ####################################################################
    ###################### GENERIC CONSTRAINTS#################
    ####################################################################

    # 20. mean_vars
    Vector{Vector{String}}(undef, 0),  # (future)
    # 21. mean_vars_min
    Vector{Vector{Float64}}(undef, 0), # (future)
    # 22. mean_vars_max
    Vector{Vector{Float64}}(undef, 0), # (future)
    # 23. sum_vars
    Vector{Vector{String}}(undef, 0),
    # 24. sum_vars_min
    Vector{Vector{Float64}}(undef, 0),
    # 25. sum_vars_max
    Vector{Vector{Float64}}(undef, 0),

    ####################################################################
    ######################### OBJECTIVE ################################
    ####################################################################

    # 26. obj_type
    "MINIMAX", # "MAXIMIN", "CCMAXIMIN", "", "custom", "MINIMAX"
    # 27. obj_points (required in MAXIMIN, CC, MINIMAX)
	[ [ -1.0, -0.5 ,zero(Float64) ] ] ,
    # 28. obj_targets (required in MINIMAX)
	[ [ 10.0, 12.0, 10.0 ] ] ,
    # 29. obj_aux_int
    zero(Float64),
    # 30. obj_aux_float
    zero(Int64),

    ####################################################################
    ######################### OUTPUT ###################################
    ####################################################################
    # 31. categories
	["Unit",
	"Domain",
	"Dimension",
	"Answer_type"
	]
);