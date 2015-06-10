# extensive set of multiplicated aliases for different algorithms 
run_algorithm{L <: Loss, M <: Mode}(X, Y, model::SALSAModel{L, PEGASOS, M}, train_idx=[]) = pegasos_alg(model.output.dfunc, X, Y, model.output.alg_params..., model.max_cv_k, model.max_cv_iter, model.tolerance, model.online_pass, train_idx) 
run_algorithm{L <: Loss, M <: Mode}(X, Y, model::SALSAModel{L, L1RDA, M}, train_idx=[]) = l1rda_alg(model.output.dfunc, X, Y, model.output.alg_params..., model.max_cv_k, model.max_cv_iter, model.tolerance, model.online_pass, train_idx) 
run_algorithm{L <: Loss, M <: Mode}(X, Y, model::SALSAModel{L, R_L1RDA, M}, train_idx=[]) = reweighted_l1rda_alg(model.output.dfunc, X, Y, model.output.alg_params..., model.max_cv_k, model.max_cv_iter, model.tolerance, model.online_pass, train_idx) 
run_algorithm{L <: Loss, M <: Mode}(X, Y, model::SALSAModel{L, R_L2RDA, M}, train_idx=[]) = reweighted_l2rda_alg(model.output.dfunc, X, Y, model.output.alg_params..., model.max_cv_k, model.max_cv_iter, model.tolerance, model.online_pass, train_idx) 
run_algorithm{L <: Loss, M <: Mode}(X, Y, model::SALSAModel{L, DROP_OUT, M}, train_idx=[]) = dropout_alg(model.output.dfunc, X, Y, model.output.alg_params..., model.max_cv_k, model.max_cv_iter, model.tolerance, model.online_pass, train_idx)
run_algorithm{L <: Loss, M <: Mode}(X, Y, model::SALSAModel{L, ADA_L1RDA, M}, train_idx=[]) = adaptive_l1rda_alg(model.output.dfunc, X, Y, model.output.alg_params..., model.max_cv_k, model.max_cv_iter, model.tolerance, model.online_pass, train_idx)
run_algorithm{L <: Loss, M <: Mode, A <: Algorithm}(X, Y, model::SALSAModel{L, K_MEANS{A}, M}, train_idx=[]) = stochastic_ppc(model.output.dfunc, X, model.algorithm, model.output.alg_params, model.max_cv_k, model.max_cv_iter, model.tolerance, model.online_pass, train_idx)