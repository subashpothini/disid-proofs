// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.service.impl;

import com.springsource.petclinic.domain.Pet;
import com.springsource.petclinic.domain.Vet;
import com.springsource.petclinic.domain.Visit;
import com.springsource.petclinic.repository.GlobalSearch;
import com.springsource.petclinic.repository.VisitRepository;
import com.springsource.petclinic.service.api.VisitService;
import com.springsource.petclinic.service.impl.VisitServiceImpl;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VisitServiceImpl_Roo_Service_Impl {
    
    declare parents: VisitServiceImpl implements VisitService;
    
    declare @type: VisitServiceImpl: @Service;
    
    declare @type: VisitServiceImpl: @Transactional(readOnly = true);
    
    public VisitRepository VisitServiceImpl.visitRepository;
    
    @Autowired
    public VisitServiceImpl.new(VisitRepository visitRepository) {
        this.visitRepository = visitRepository;
    }

    @Transactional(readOnly = false)
    public Visit VisitServiceImpl.save(Visit entity) {
        return visitRepository.save(entity);
    }
    
    @Transactional(readOnly = false)
    public void VisitServiceImpl.delete(Long id) {
         visitRepository.delete(id);
    }
    
    @Transactional(readOnly = false)
    public List<Visit> VisitServiceImpl.save(Iterable<Visit> entities) {
        return visitRepository.save(entities);
    }
    
    @Transactional(readOnly = false)
    public void VisitServiceImpl.delete(Iterable<Long> ids) {
        List<Visit> toDelete = visitRepository.findAll(ids);
        visitRepository.deleteInBatch(toDelete);
    }
    
    public List<Visit> VisitServiceImpl.findAll() {
        return visitRepository.findAll();
    }
    
    public List<Visit> VisitServiceImpl.findAll(Iterable<Long> ids) {
        return visitRepository.findAll(ids);
    }
    
    public Visit VisitServiceImpl.findOne(Long id) {
        return visitRepository.findOne(id);
    }
    
    public long VisitServiceImpl.count() {
        return visitRepository.count();
    }
    
    public List<Visit> VisitServiceImpl.findByDescriptionAndVisitDate(String description, Date visitDate) {
        return visitRepository.findByDescriptionAndVisitDate(description, visitDate);
    }
    
    public List<Visit> VisitServiceImpl.findByVisitDateBetween(Date visitDate1, Date visitDate2) {
        return visitRepository.findByVisitDateBetween(visitDate1, visitDate2);
    }
    
    public List<Visit> VisitServiceImpl.findByDescriptionLike(String description) {
        return visitRepository.findByDescriptionLike(description);
    }
    
    public Page<Visit> VisitServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return visitRepository.findAll(globalSearch, pageable);
    }
    
    public Long VisitServiceImpl.countByVetId(Long id) {
        return visitRepository.countByVetId(id);
    }
    
    public Long VisitServiceImpl.countByPetId(Long id) {
        return visitRepository.countByPetId(id);
    }
    
    public Page<Visit> VisitServiceImpl.findAllByVet(Vet vetField, GlobalSearch globalSearch, Pageable pageable) {
        return visitRepository.findAllByVet(vetField, globalSearch, pageable);
    }
    
    public Page<Visit> VisitServiceImpl.findAllByPet(Pet petField, GlobalSearch globalSearch, Pageable pageable) {
        return visitRepository.findAllByPet(petField, globalSearch, pageable);
    }
    
}
