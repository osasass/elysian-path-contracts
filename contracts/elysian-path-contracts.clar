;; ========================================================
;; ElysianPath - Paradise-route career navigation system
;; ========================================================

;; ==================== PERSISTENT DATA REPOSITORIES ====================


;; Comprehensive talent profile database storing individual professional credentials
;; Maintains skill portfolios and biographical information for matching algorithms
(define-map talent-profile-database
    principal
    {
        professional-identifier: (string-ascii 100),
        expertise-portfolio: (list 10 (string-ascii 50)),
        geographic-coordinates: (string-ascii 100),
        professional-narrative: (string-ascii 500)
    }
)

;; Dynamic opportunity catalog containing active project listings
;; Stores detailed project specifications and matching requirements
(define-map opportunity-catalog
    principal
    {
        opportunity-title: (string-ascii 100),
        detailed-specification: (string-ascii 500),
        opportunity-originator: principal,
        execution-location: (string-ascii 100),
        prerequisite-criteria: (list 10 (string-ascii 50))
    }
)

;; Central repository maintaining comprehensive records of verified business entities
;; Each entity maintains detailed operational metadata including sector classification
(define-map corporate-entity-vault
    principal
    {
        entity-identifier: (string-ascii 100),
        sector-classification: (string-ascii 50),
        operational-coordinates: (string-ascii 100)
    }
)


;; ==================== SYSTEM ERROR DEFINITIONS ====================

;; Comprehensive error code system for robust error handling and debugging

(define-constant INVALID-OPPORTUNITY-DATA (err u403))
(define-constant MISSING-PROFILE-ERROR (err u404))
(define-constant RESOURCE-NOT-LOCATED (err u404))
(define-constant DUPLICATE-RESOURCE-ERROR (err u409))
(define-constant INVALID-EXPERTISE-DATA (err u400))
(define-constant INVALID-COORDINATES-ERROR (err u401))
(define-constant INVALID-NARRATIVE-ERROR (err u402))

;; ==================== TALENT PROFILE MANAGEMENT SYSTEM ====================
